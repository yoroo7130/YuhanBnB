<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .search{
            text-align:center;
            margin-bottom:10px;
        }
        .search #address {
            width: 350px;
            height: 20px;
            line-height: 20px;
            border: solid 1px #555;
            padding: 5px;
            font-size: 12px;
            box-sizing: content-box;
        }
        .search #submit {
            height: 30px;
            line-height: 30px;
            padding: 0 10px;
            font-size: 12px;
            border: solid 1px #555;
            border-radius: 3px;
            cursor: pointer;
            box-sizing: content-box;
        }
        .input{
            width: 350px;
            height: 20px;
            line-height: 20px;
            border: solid 1px #555;
            padding: 5px;
            font-size: 12px;
            box-sizing: content-box;
        }
        .button {
            height: 30px;
            line-height: 30px;
            padding: 0 10px;
            font-size: 12px;
            border: solid 1px #555;
            border-radius: 3px;
            cursor: pointer;
            box-sizing: content-box;
        }
    </style>
</head>
<body>
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="./js/base.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=a65sipx81f&amp;submodules=panorama,geocoder,drawing,visualization"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-panorama.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-geocoder.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-drawing.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-visualization.js"></script>

    <!-- 검색 창 -->
    <div class="search">
            <input id="address" type="text" placeholder="검색할 주소" value="경기도 부천시 경인로 590"/>
            <input id="submit" type="button" value="주소 검색"/>
    </div>

    <!-- 지도가 생성되는 div 영역, id 는 map 으로 설정 -->
    <div id="map" style="margin:0 auto; width:750px; max-width:100%; height:450px;"></div>

    <form id="form2" runat="server">
    <div style="text-align:center;margin-top:10px;">
        <asp:TextBox ID="myaddress" runat="server" ReadOnly="true" class="input"></asp:TextBox>
<%--        <input id="myaddress" type="text" value="" class="input" readonly="true"/>--%>
        <asp:Button ID="Button1" runat="server" Text="Button" class="button" OnClick="Button1_Click"/>
        <asp:Button ID="Button2" runat="server" Text="Button" class="button" OnClick="Button2_Click"/>
    </div>
    </form>

    <script>
        var map = new naver.maps.Map("map", {
            center: new naver.maps.LatLng(37.3595316, 127.1052133),
            zoom: 10,
            mapTypeControl: true
        });

        var infoWindow = new naver.maps.InfoWindow({
            anchorSkew: true
        });

        map.setCursor('pointer');

        // 지도 위를 누루면 선택된 포인터의 좌표를 구해 검색
        function searchCoordinateToAddress(latlng) {

            infoWindow.close();

            naver.maps.Service.reverseGeocode({
                coords: latlng,
                orders: [
                    naver.maps.Service.OrderType.ADDR,
                    naver.maps.Service.OrderType.ROAD_ADDR
                ].join(',')
            }, function(status, response) {
                if (status === naver.maps.Service.Status.ERROR) {
                    return alert('Something Wrong!');
                }

                var items = response.v2.results,
                    address = '',
                    htmlAddresses = [];

                for (var i=0, ii=items.length, item, addrType; i<ii; i++) {
                    item = items[i];
                    address = makeAddress(item) || '';
                    addrType = item.name === 'roadaddr' ? '[도로명 주소]' : '[지번 주소]';

                    htmlAddresses.push((i+1) +'. '+ addrType +' '+ address);
                }

                infoWindow.setContent([
                    '<div style="padding:10px;min-width:200px;line-height:150%;">',
                    '<h4 style="margin-top:5px;">검색 좌표</h4><br />',
                    htmlAddresses.join('<br />'),
                    '</div>'
                ].join('\n'));

                infoWindow.open(map, latlng);
                document.getElementById('myaddress').value = address;
            });
        }
        // 검색 버튼을 눌렀을 때 주소 값으로 검색
        function searchAddressToCoordinate(address) {
            naver.maps.Service.geocode({
                query: address
            }, function(status, response) {
                if (status === naver.maps.Service.Status.ERROR) {
                    return alert('Something Wrong!');
                }

                if (response.v2.meta.totalCount === 0) {
                    return alert('정확한 주소를 입력하세요.');
                }

                var htmlAddresses = [],
                    item = response.v2.addresses[0],
                    point = new naver.maps.Point(item.x, item.y);

                if (item.roadAddress) {
                    htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
                }

                if (item.jibunAddress) {
                    htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
                }

                if (item.englishAddress) {
                    htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
                }

                infoWindow.setContent([
                    '<div style="padding:10px;min-width:200px;line-height:150%;">',
                    '<h4 style="margin-top:5px;">검색 주소 : '+ address +'</h4><br />',
                    htmlAddresses.join('<br />'),
                    '</div>'
                ].join('\n'));

                map.setCenter(point);
                infoWindow.open(map, point);
                document.getElementById('myaddress').value = item.roadAddress;
            });
        }

        // 지도가 나타나고 초기값 설정
        function initGeocoder() {
            map.addListener('click', function(e) {
                searchCoordinateToAddress(e.coord);
            });

            $('#address').on('keydown', function(e) {
                var keyCode = e.which;

                if (keyCode === 13) { // Enter Key
                    searchAddressToCoordinate($('#address').val());
                }
            });

            $('#submit').on('click', function(e) {
                e.preventDefault();

                searchAddressToCoordinate($('#address').val());
            });

            //searchAddressToCoordinate("경기도 부천시 경인로 590");
            searchAddressToCoordinate('<%=this.addr%>'); // C#에 선언된 변수에 접근하는 방법
        }

        // 검색한 키워드로 주소를 만듬
        function makeAddress(item) {
            if (!item) {
                return;
            }

            var name = item.name,
                region = item.region,
                land = item.land,
                isRoadAddress = name === 'roadaddr';

            var sido = '', sigugun = '', dongmyun = '', ri = '', rest = '';

            if (hasArea(region.area1)) {
                sido = region.area1.name;
            }

            if (hasArea(region.area2)) {
                sigugun = region.area2.name;
            }

            if (hasArea(region.area3)) {
                dongmyun = region.area3.name;
            }

            if (hasArea(region.area4)) {
                ri = region.area4.name;
            }

            if (land) {
                if (hasData(land.number1)) {
                    if (hasData(land.type) && land.type === '2') {
                        rest += '산';
                    }

                    rest += land.number1;

                    if (hasData(land.number2)) {
                        rest += ('-' + land.number2);
                    }
                }

                if (isRoadAddress === true) {
                    if (checkLastString(dongmyun, '면')) {
                        ri = land.name;
                    } else {
                        dongmyun = land.name;
                        ri = '';
                    }

                    if (hasAddition(land.addition0)) {
                        rest += ' ' + land.addition0.value;
                    }
                }
            }

            return [sido, sigugun, dongmyun, ri, rest].join(' ');
        }

        function hasArea(area) {
            return !!(area && area.name && area.name !== '');
        }

        function hasData(data) {
            return !!(data && data !== '');
        }

        function checkLastString (word, lastString) {
            return new RegExp(lastString + '$').test(word);
        }

        function hasAddition (addition) {
            return !!(addition && addition.value);
        }

        naver.maps.onJSContentLoaded = initGeocoder;
    </script>

</body>
</html>
