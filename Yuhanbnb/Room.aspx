<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Room.aspx.cs" Inherits="Room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	    <!-- Required meta tags -->
        <link rel="icon" href="img/favicon.png" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- animate CSS -->
        <link rel="stylesheet" href="css/animate.css" />
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="css/owl.carousel.min.css" />
        <!-- themify CSS -->
        <link rel="stylesheet" href="css/themify-icons.css" />
        <!-- flaticon CSS -->
        <link rel="stylesheet" href="css/flaticon.css" />
        <!-- fontawesome CSS -->
        <link rel="stylesheet" href="fontawesome/css/all.min.css" />
        <!-- magnific CSS -->
        <link rel="stylesheet" href="css/magnific-popup.css" />
        <link rel="stylesheet" href="css/gijgo.min.css" />
        <!-- niceselect CSS -->
        <link rel="stylesheet" href="css/nice-select.css" />
        <!-- slick CSS -->
        <link rel="stylesheet" href="css/slick.css" />
        <!-- style CSS -->
        <link rel="stylesheet" href="css/style.css" />
    <style>
        div.wrapper
            {
	        margin: 0 auto;
            padding: 60px 0;
            background: rgba(255, 255, 255, 0);
            }

        table, th, td 
            {
	        color:  #2493e0;
            margin: 0 auto;
            padding: 0;
            border-spacing: 0;
            border: 0;
            border-collapse: collapse;
            vertical-align: middle;
            }

        tr  
            {
            display: table-row;
            vertical-align: inherit;
            border-color: inherit;
            }

        .person-tb td 
            {
            padding: 13px;

        
            }

        .person-tb th 
            {
            padding: 13px 26px;
            background-color:  #2493e0;
            vertical-align: top;
            color: #fff;
            text-align: left;
            font-size: 14px;
            font-weight: 500;
      
            }

        .person-tb th
            {
            height: 33px;
            border-bottom: 1px solid #e9e9e9;
         
            }

        .person-tb td 
            {
            height: 33px;
            background-color:  #fff;
            border-bottom: 1px solid #888;
            }

        .normal-input 
            {
            width: 265px;
            }

        .small-input, .normal-input, .large-input 
            {
            height: 31px;
            line-height: 31px;
            border: 1px solid #888;
            padding: 0 10px;
            }

        .MS_input_txt 
            {
            margin-right: 5px;
            padding: 2px 0 0 2px;
            line-height: 31px;
            height: 31px;
            }

        input, select 
            {
            outline: none;
            font-family: Malgun Gothic,'맑은 고딕',Helvetica,AppleGothic,dotum,'돋움',sans-serif;
            color: #717171;
            }

        .cbtn 
            {
            display: inline-block;
            font-size: 11px;
            color:  #2493e0;
            background-color:#fff;
            min-width: 98px;
            height: 31px;
            line-height: 32px;
            border: 1px solid #717171;
            text-align: center;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
            }

        .person-tb .head-cell 
            {
            position: relative;
            padding-top: 6px;
      
            }

        .person-tb .col-cell.social .MS_select:first-child 
            {
            margin-left: 0px;
          
            }

        .person-tb .col-cell.social .MS_select 
            {
            margin: 0 5px;
          
            }

        .person-tb .MS_select 
            {
            height: 33px;
            padding: 0 0 0 10px;
   
            }

        .person-tb .col-cell.social .MS_radio 
            {
            margin-left: 20px;
            margin-right: 5px;
       
            }

        tr.borderTop
            {
	        border-top: 1px solid #888;
            }

        .skinbtn.point2 
            {
	        width: 158px;
            height: 50px;
            font-size: 16px;
            background:  #2493e0;
            border: 1px solid  #2493e0;
            color: #fff;
            }

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

        body {	
				height:130vh;
                
				background-image: url("img/event_bg.png");
				background-repeat: no-repeat;
				background-position: center;
				background-size: cover;
             
			}
			
			#from1 {
				position: absolute;
			  	top: 50%;
			  	left: 50%;
			 	background: rgba(255, 255, 255, 0.6);
			  	transform: translate(-50%, -50%);
			  	text-align: center;
			  	border-radius: 3px;
			  	width: 400px;
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

<form id = "form1" runat="server"> 
    <div class="wrapper"><h1 style="color:black; text-align:center; margin-bottom:40px;"><a href="index.aspx"></a></h1>
           
            
        <asp:Table ID="Table1" runat="server" CssClass="person-tb"  CellPadding ="100" align ="left" style="margin-left: 300px" >
            
        <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소명</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:TextBox ID="RoomsName" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" required="true"></asp:TextBox>
                    
                </div>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소지역</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value ="1">서울</asp:ListItem>
                    <asp:ListItem Value ="2">경기</asp:ListItem>
                    <asp:ListItem Value ="3">인천</asp:ListItem>
                    <asp:ListItem Value ="4">강원</asp:ListItem>
                    <asp:ListItem Value ="5">부산</asp:ListItem>
                    <asp:ListItem Value ="6">경상</asp:ListItem>
                    <asp:ListItem Value ="7">전라</asp:ListItem>
                    <asp:ListItem Value ="8">충청</asp:ListItem>
                    <asp:ListItem Value ="9">대전</asp:ListItem>
                    <asp:ListItem Value ="10">제주</asp:ListItem>

                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
          <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소주소</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:TextBox ID="resaddr" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" required="true" ReadOnly="true"></asp:TextBox>
              
                </div>
            </asp:TableCell>

        </asp:TableRow>

        <asp:TableRow>
            <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>숙소 사진</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                 <asp:FileUpload ID="FileUpload1" runat="server" required="true"/>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>숙소 사진2</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                 <asp:FileUpload ID="FileUpload2" runat="server" required="true"/>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>숙소 사진3</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                 <asp:FileUpload ID="FileUpload3" runat="server" required="true"/>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>숙소 사진4</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                 <asp:FileUpload ID="FileUpload4" runat="server" required="true"/>
            </asp:TableCell>
        </asp:TableRow>

         <asp:TableRow>
            <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>숙소 사진5</div>
            </asp:TableHeaderCell>

            <asp:TableCell>
                 <asp:FileUpload ID="FileUpload5" runat="server" required="true" />
            </asp:TableCell>
        </asp:TableRow>

       
        <asp:TableRow>
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소 이벤트</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:TextBox ID="resevt" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" placeholder="숙소 이벤트를 등록할 수 있습니다."></asp:TextBox>
                    
                </div>
            </asp:TableCell>
        </asp:TableRow>
                                    
            <asp:TableRow>
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소 정보</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:TextBox ID="resinfo" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" placeholder="숙소 정보를 등록할 수 있습니다." TextMode="MultiLine"></asp:TextBox>                    
                </div>
            </asp:TableCell>
        </asp:TableRow>

            <asp:TableRow>
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소 코멘트</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:TextBox ID="rescom" runat="server" CssClass="MS_input_txt normal-input"  placeholder="숙소 코멘트를 등록할 수 있습니다." TextMode="MultiLine"></asp:TextBox>
                </div>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
        <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소 태그</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                      <asp:TextBox ID="RoomsKeyWord" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" placeholder="숙소의 키워드를 등록할 수 있습니다."></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord1" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" placeholder="숙소의 키워드를 등록할 수 있습니다." ></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord2" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" placeholder="숙소의 키워드를 등록할 수 있습니다."></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord3" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" placeholder="숙소의 키워드를 등록할 수 있습니다."></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord4" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" placeholder="숙소의 키워드를 등록할 수 있습니다." ></asp:TextBox>
                </div>
            </asp:TableCell>
        </asp:TableRow>




        <asp:TableRow>
            <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>공용 시설</div></asp:TableHeaderCell>
                    <asp:TableCell>
                        <div>
                              <input type ="checkbox" id = "WASMAC" name ="washer" />세탁기<br />
                              <input type ="checkbox" id = "PAKLOT" name ="PAKLOT" />주차장<br />
                              <input type ="checkbox" id = "BBQ" name ="BBQ" />바베큐<br />
                              <input type ="checkbox" id = "WIFI" name ="WIFI" />와이파이
                            </div>
                           
          
      </asp:TableCell>
                      </asp:TableRow>

        <asp:TableRow>
             <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>객체 시설</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                <input type ="checkbox" id = "RESFRI" name ="RESFRI"/>냉장고<br />
                <input type ="checkbox" id = "RESAIR" name ="RESAIR"/>에어컨<br />
                <input type ="checkbox" id = "RESBAT" name ="RESBAT"/>욕실용품<br />
                <input type ="checkbox" id = "RESTV" name ="RESTV"/>TV
         
      </asp:TableCell>
        </asp:TableRow>
                  
                      <asp:TableRow>
                           <asp:TableHeaderCell style="border-bottom:1px solid black;">
                <div class="head-cell"><span class="empha"></span>기타 시설</div>
            </asp:TableHeaderCell>                     
      <asp:TableCell>
                <input type ="checkbox" id = "BRKFAT" name ="BRKFAT"/>조식<br />
                <input type ="checkbox" id = "SOMKE" name ="SMOKE"/>객실 내 흡연<br />
                <input type ="checkbox" id = "EVENT" name ="EVENT"/>숙소이벤트<br />
                <input type ="checkbox" id = "PET" name ="PET"/>반려견 동반
          
      </asp:TableCell>


                </asp:TableRow>

            <asp:TableRow>
              <asp:TableCell>
                  </asp:TableCell>
           
                <asp:TableCell>
                         <asp:Button ID="Button3" runat="server" Text="등록" CssClass="skinbtn point2 l-login" ValidationGroup="member" BackColor="#fe5c24" BorderStyle="None" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="button" style="border-style:none;background-color:#fe5c24" class="skinbtn point2 l-login" onclick="location.href='index.aspx'" value="취소"/>
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table>
               

    
        
            <asp:Table ID="Table2" runat="server" align ="right"  style="margin-right: 300px">
                <asp:TableRow>
                    <asp:TableCell>
                        <!-- 검색 창 -->
                         <div class="search">
            <input id="address" type="text" placeholder="검색할 주소"/>
            <input id="submit" type="button" value="주소 검색"/>
    </div>
                        
     <!-- 지도가 생성되는 div 영역, id 는 map 으로 설정 -->
    <div id="map" style="margin:0 auto; width:650px; max-width:100%; height:450px;"></div>

    
    <div style="text-align:center;margin-top:10px;">
      

    </div>
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
                document.getElementById('resaddr').value = address;
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
                document.getElementById('resaddr').value = item.roadAddress;
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
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>

</body>

</html>
