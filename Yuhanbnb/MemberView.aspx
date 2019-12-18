<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberView.aspx.cs" Inherits="MemberView" %>

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

         body {   
            height:100vh;
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
    <form id="form1" runat="server">
         <div class="wrapper">
        <asp:Table ID="Table1" runat="server" CssClass="person-tb" CellPadding ="100">
            <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>아이디</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:label ID="lblid" runat="server"></asp:label>                
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
             <asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div class="head-cell"><span class="empha"></span>생일</div></asp:TableHeaderCell>
            <asp:TableCell>
                 <div class="col-cell">
                     <asp:label ID="lblbirth" runat="server"></asp:label>                
                </div>
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

<asp:TableRow CssClass="borderTop">
            <asp:TableHeaderCell><div ><span class="empha"></span>등록한 숙소</div></asp:TableHeaderCell>
            <asp:TableCell>
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="-1">
                    <asp:View ID="View1" runat="server">
                 <asp:Table ID="Table2" runat="server" Height="150px" Width="600px">
                  <asp:TableHeaderRow>
                      <asp:TableCell>
                          숙소이미지
                      </asp:TableCell>
                      <asp:TableCell>
                          숙소 명
                      </asp:TableCell>
                      <asp:TableCell>
                          상세보기
                      </asp:TableCell>
                      <asp:TableCell>
                          수정/삭제
                      </asp:TableCell>
                  </asp:TableHeaderRow>
                  <asp:TableHeaderRow>
                      <asp:TableCell>
                           <asp:Image ID="Image1" runat="server" ImageUrl = '<%# Eval("resimg1") %>' Width ="150px" Height ="150px"/>     
                      </asp:TableCell>
                      <asp:TableCell>
                          <asp:label ID="lblresname" runat="server"></asp:label>
                      </asp:TableCell>
                      <asp:TableCell>
                          <input type="button" value="상세보기" style="border-style:none;" onclick="location.href='view.aspx?residx=<%= this.residx %>'"/>
                      </asp:TableCell>
                      <asp:TableCell>
                          <input type="button" value="수정" style="border-style:none;" onclick="location.href = 'modifyres.aspx?residx=<%= this.residx %>'"/> &nbsp;
                          <input type="button" value="삭제" style="border-style:none;" onclick="location.href = 'deleteres.aspx?residx=<%= this.residx %>'"/>
                      </asp:TableCell>
                  </asp:TableHeaderRow>
              </asp:Table>
                        </asp:View>
                    <asp:View ID="View2" runat="server">                                         
                        <asp:Table ID="Table3" runat="server" Height="150px" Width="600px">
                  <asp:TableHeaderRow>
                      <asp:TableCell>
                          숙소이미지
                      </asp:TableCell>
                      <asp:TableCell>
                          숙소 명
                      </asp:TableCell>
                      <asp:TableCell>
                          상세보기
                      </asp:TableCell>
                      <asp:TableCell>
                          수정/삭제
                      </asp:TableCell>
                  </asp:TableHeaderRow>
                  <asp:TableHeaderRow>
                      <asp:TableCell>
                           <asp:Image ID="Image2" runat="server" ImageUrl = "~/img/services_3.png" Width ="150px" Height ="150px"/> 
                      </asp:TableCell>
                      <asp:TableCell>
                          <asp:label ID="Label1" runat="server">등록한 숙소가 없습니다. <br />지금 바로 호스트가 되어보세요!</asp:label>
                      </asp:TableCell>
                      <asp:TableCell>

                      </asp:TableCell>
                      <asp:TableCell>

                      </asp:TableCell>
                  </asp:TableHeaderRow>
              </asp:Table>
                    </asp:View>
                    </asp:MultiView>
            </asp:TableCell>
        </asp:TableRow>
             
            </asp:Table>

             

             <section class="top_place section_padding" style="padding-top:50px">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-6">
                    <div class="section_tittle text-center">
                    <asp:Button ID="button1" runat="server" Text="변경" CssClass="skinbtn point2 l-login" ValidationGroup="member" BackColor="#fe5c24" BorderStyle="None" OnClick ="button1_Click"/> &nbsp;
               <asp:Button ID="button6" runat="server" Text="탈퇴" CssClass="skinbtn point2 l-login" BackColor="#fe5c24" BorderStyle="None" OnClick ="button6_Click"/> &nbsp;                        
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