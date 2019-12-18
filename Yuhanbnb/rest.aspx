﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rest.aspx.cs" Inherits="rest" %>

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
            vertical-align: middle;
        
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
    <div class="wrapper"  style="background-color:white"><h1 style="color:black; text-align:center; margin-bottom:40px;"><a href="index.aspx"></a></h1>
  

        <asp:Table ID="Table1" runat="server" CssClass="person-tb"  CellPadding ="100"  >
            
        <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙소명</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:TextBox ID="RoomsName" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" ></asp:TextBox>
                    
                </div>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>숙박인원</div></asp:TableHeaderCell>
            <asp:TableCell>
                   최대<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value ="1">1</asp:ListItem>
                    <asp:ListItem Value ="2">2</asp:ListItem>
                    <asp:ListItem Value ="3">3</asp:ListItem>
                    <asp:ListItem Value ="4">4</asp:ListItem> 
                </asp:DropDownList>인
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>숙소 사진</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                  <input type="file" name="fileupload" onchange="imagePreview(this);" /> 
            </asp:TableCell>
        </asp:TableRow>

       <asp:TableRow>
        <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>대표 키워드</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                      <asp:TextBox ID="RoomsKeyWord" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" ></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord1" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" ></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord2" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" ></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord3" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" ></asp:TextBox><br />
                      <asp:TextBox ID="RoomsKeyWord4" runat="server" CssClass="MS_input_txt normal-input" MaxLength="100" ></asp:TextBox>
                </div>
            </asp:TableCell>
        </asp:TableRow>




            <asp:TableRow>
             <asp:TableHeaderCell>
                <div class="head-cell"><span class="empha"></span>공용 시설</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                <input type ="checkbox" id = "" name ="Washer"/>세탁기<br />
                <input type ="checkbox" id = "" name ="Lounge"/>라운지<br />
                <input type ="checkbox" id = "" name ="Kitchen"/>주방/식당<br />
                <input type ="checkbox" id = "" name ="Pc"/>공용Pc
         
      </asp:TableCell>
        </asp:TableRow>

            
            <asp:TableRow>
             <asp:TableHeaderCell style="border-bottom:1px solid black;">
                <div class="head-cell"><span class="empha"></span>기타 시설</div>
            </asp:TableHeaderCell>
            <asp:TableCell>
                <input type ="checkbox" id = "" name ="Breakfast"/>조식<br />
                <input type ="checkbox" id = "" name ="Smoke"/>객실 내 흡연<br />
                <input type ="checkbox" id = "" name ="Parking"/>무료주차<br />
                <input type ="checkbox" id = "" name ="Dog"/>반려견 동반
         
      </asp:TableCell>
        </asp:TableRow>

       
        </asp:Table>

          <section class="top_place section_padding" style="padding-top:50px">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                         <asp:Button ID="Button1" runat="server" Text="등록" CssClass="skinbtn point2 l-login" ValidationGroup="member" BackColor="#fe5c24" BorderStyle="None" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button2" runat="server" Text="취소" CssClass="skinbtn point2 l-login" ValidationGroup="member" BackColor="#fe5c24" BorderStyle="None" />      
                        </div>
                    </div>
                </div>
            </div>
    </section>

            </div>
    </form>
</body>

</html>