<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="log" %>

<!DOCTYPE html>
<html>
        <head runat="server">
        <title>로그인</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" href="css/style.css" />
		
		<style>
			body {	
				height:100vh;
				background-image: url("img/event_bg.png");
				background-repeat: no-repeat;
				background-position: center;
				background-size: cover;
			}
			
			#login {
				position: absolute;
			  	top: 50%;
			  	left: 50%;
			 	background: rgba(255, 255, 255, 0.6);
			  	transform: translate(-50%, -50%);
			  	text-align: center;
			  	border-radius: 3px;
			  	width: 400px;
			}
			
			#loginIn {
			 	display: inline-block;
			}
		    .auto-style1 {
                width: 300px;
                height: 90px;
            }
		</style>
	</head>

	<body>
 		<form id = "login" runat="server"> 
             <br />
			<div><a href="index.aspx"> <img src="img/logo.png" alt="logo" class="auto-style1"> </a></div> 
             <br />
			<div id = "loginIn">
				<div style="width:100%">
					<asp:TextBox ID="txtID" runat="server" CssClass="single-input-primary" placeholder="아이디" required="true" autofocus="autofocus" Width="200px"/><br />
				</div>
				<div style="width:100%">
                    <asp:TextBox ID="txtPwd" runat="server" CssClass="single-input-primary" placeholder="비밀번호" TextMode="Password" required="true" autofocus="autofocus" Width="200px"></asp:TextBox>
				</div>
                <p><asp:Label ID="lblLogin" runat="server" Font-Bold="True" Font-Names="맑은 고딕" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Red"></asp:Label></p><br />
				<div style="width:100%;">
					<ul>
						<li><asp:Button ID="btnLogin" runat="server" Text="로그인" CssClass="genric-btn primary" OnClick="btnLogin_Click"></asp:Button>&nbsp;
                            <input type="button" class="genric-btn primary" value="회원가입" onclick="location.href='join.aspx'" />
						</li>
					</ul>
				</div>	
                <br />
			</div>
        </form>
	</body>
</html>
