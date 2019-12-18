<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IdConfirm.aspx.cs" Inherits="IdConfirm" %>

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
    <title>아이디 중복 체크</title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script>
        function Repri() {
            opener.document.getElementById("txtID").value = document.getElementById("txtID").value;

            self.close();
        }
    </script>
    <style type="text/css">
        div.wrapper
            {
           margin: 0 auto;
            padding: 100px 0;
            background: rgba(255, 255, 255, 0.4);
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

        .skinbtn.point1
            {
           font-size: 16px;
            background:  #fe5c24;
            border: 1px solid  #2493e0;
            color: #fff;
            }

        .skinbtn.point2 
            {
           font-size: 16px;
            background:  #2493e0;
            border: 1px solid  #2493e0;
            color: #fff;
            }

        body {   
            height:120vh;
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
        .tg  {border-collapse:collapse;border-spacing:0;border-width:1px;border-style:solid;border-color:black;width:500px}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:5px 20px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal; text-align:center}
        .tg th{font-family:Arial, sans-serif;font-size:large;font-weight:bold;padding:5px 20px;border-bottom:solid 1px;overflow:hidden;word-break:normal;}
        .auto-style1 {
            width: 148px;
        }
        .auto-style2 {
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="tg" style="background-color:white;">
              <tr>
                <th colspan="2" class="auto-style2" style="background-color: #2493e0; color:white; text-align: center;">
                    아이디 중복 확인
                </th>
              </tr>
              <tr>
                <td class="tg-sx07">
                    <asp:TextBox ID="txtID" runat="server" CssClass="textBox" Width="300" OnTextChanged="txtID_textChanged"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="아이디확인" CssClass ="skinbtn point1 l-login" Height="45" OnClick="Button1_Click" />
                </td>
              </tr>
              <tr>
                <td class="tg-sx07">
                    <asp:Label ID="Label1" runat="server" style="font-weight:bold; font-size:medium; font-family:'맑은 고딕'"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button2" CssClass="skinbtn point2 l-login" runat="server" Text="아이디사용"  Height="45px" OnClick="Button2_Click" />
                </td>
              </tr>
            </table>
        </div>
    </form>
</body>
</html>