<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifymember.aspx.cs" Inherits="modifymember" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            margin-left: 0;
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
    <form id="form1" runat="server">
        <div class="wrapper" style="background-color:white"><h1 style="color:black; text-align:center; margin-bottom:40px;"><a href="index.aspx"><img src="./img/logo.png" style="width: 500px; height: 180px;"/></a></h1>
        <asp:Table ID="Table1" runat="server" CssClass="person-tb" Height="527px" Width="1074px">
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>아이디</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:Label ID="lblid" runat="server"></asp:Label>
                   
                </div>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>비밀번호</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                      <asp:TextBox ID="txtPwd" runat="server" CssClass="MS_input_txt normal-input" MaxLength="20" TextMode="Password"></asp:TextBox>
                    <span class="idpw-info">* 4~20자로 입력해 주세요.</span>
                    <asp:RequiredFieldValidator ID="pwRequired" runat="server" ErrorMessage=" * 비밀번호를 입력해주세요" ControlToValidate="txtPwd" ValidationGroup="member" ForeColor="Red" CssClass="idpw-info"></asp:RequiredFieldValidator>
                   
                </div>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>비밀번호 확인</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                      <asp:TextBox ID="txtPwdChk" runat="server" CssClass="MS_input_txt normal-input" MaxLength="20" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage=" * 비밀번호가 일치하지 않습니다." ControlToValidate="txtPwd" ControlToCompare="txtPwdChk" ValidationGroup="member" ForeColor="Red" CssClass="idpw-info"></asp:CompareValidator>
                   
                </div>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>이름</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:label ID="lblName" runat="server"></asp:label>   
                   
                </div>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>이메일</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                      <asp:label ID="lblemail" runat="server"></asp:label>
                   
                </div>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow>
            <asp:TableHeaderCell style="border-bottom:1px solid black;">
                <div class="head-cell"><span class="empha"></span>생년월일</div>
            </asp:TableHeaderCell>
                    <asp:TableCell>
                        <asp:Label ID="lblbirth" runat="server"></asp:Label>
                        
                    </asp:TableCell>
                </asp:TableRow>
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>가입일자</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:label ID="lbldate" runat="server"></asp:label>                
                </div>
            </asp:TableCell>
        </asp:TableRow>
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>멤버코드</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:label ID="lblcode" runat="server"></asp:label>                
                </div>
            </asp:TableCell>
        </asp:TableRow>
            </asp:Table>

             <section class="top_place section_padding" style="padding-top:50px">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                    <asp:Button ID="button1" runat="server" Text="변경" CssClass="skinbtn point2 l-login" ValidationGroup="member" BackColor="#fe5c24" BorderStyle="None" OnClick="button1_Click"/> &nbsp;
					<asp:Button ID="button2" runat="server" Text="취소" CssClass="skinbtn point2 l-login" PostBackUrl="~/index.aspx" BackColor="#fe5c24" BorderStyle="None" />
                        </div>
                    </div>
                </div>
            </div>
    </section>
        </div>
    </form>
</body>
</html>
