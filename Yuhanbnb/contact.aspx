<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=a65sipx81f&amp;submodules=panorama,geocoder,drawing,visualization"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-panorama.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-geocoder.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-drawing.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps-visualization.js"></script>
    <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg">
        <div class="container">
            <div class="row" style="height:300px">
                <div class="col-lg-12" style="height:300px">
                    <div class="breadcrumb_iner" style="height:300px">
                        <div class="breadcrumb_iner_item text-center">
                            <h2>contact</h2>
                            <p>home . contact</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
        <div class="container">
            <div class="d-none d-sm-block mb-5 pb-4">
                <div id="map" style="margin:0 auto; width:1050px; max-width:100%; height:580px;"></div>
            </div>

            <div class="row">
                <div class="col-12">
                    <h2 class="contact-title">Get in Touch</h2>
                </div>
                <div class="col-lg-8">
                    <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">

                                    <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder='Enter Message'></textarea>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder='Enter your name'>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <input class="form-control" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder='Enter email address'>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder='Enter Subject'>
                                </div>
                            </div>
                        </div>
                        <div class="form-group mt-3">
                            <button type="submit" class="button button-contactForm btn_1">Send Message</button>
                        </div>
                    </form>
                </div>
                <div class="col-lg-4">
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-home"></i></span>
                        <div class="media-body">
                            <h3>Bucheon, Republic of Korea</h3>
                            <p>www.yuhan.ac.kr</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                        <div class="media-body">
                            <h3>(02)2610-0600</h3>
                            <p>Mon to Fri 9am to 6pm</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon"><i class="ti-email"></i></span>
                        <div class="media-body">
                            <h3>example@yuhan.ac.kr</h3>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->       
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
       
           searchAddressToCoordinate("경기도 부천시 경인로 590");
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
</asp:Content>

