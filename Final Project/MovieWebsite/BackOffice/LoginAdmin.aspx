<%@ Page Title="" Language="C#" MasterPageFile="~/BackOffice/MPAdmin3.master" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="BackOffice_LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
    <html>
        <head>
            <style>
                
                /* 'Open Sans' font from Google Fonts */
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
                    font-family: 'Open Sans', sans-serif;
                    background: url('/imagens/fundologin.png') no-repeat center center fixed;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover;
                    background-color: transparent;
                    font-family: "Arial Narrow";
                }

.login {
  width: 400px;
  margin: 16px auto;
  font-size: 16px;
}

/* Reset top and bottom margins from certain elements */
.login-header,
.login p {
  margin-top: 0;
  margin-bottom: 0;
}

/* The triangle form is achieved by a CSS hack */
.login-triangle {

  width: 0;
  margin-right: auto;
  margin-left: auto;
  border: 12px solid transparent;
  border-bottom-color: rgb(255, 106, 0);
}

.login-header {
  background: rgb(255, 106, 0);
  padding: 20px;
  font-size: 1.4em;
  font-weight: normal;
  text-align: center;
  text-transform: uppercase;
  color: #fff;
}

.login-container {
  background: #ebebeb;
  padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
  padding: 12px;
}
                .auto-style1 {
                    width: 281px;
                    margin: 16px auto;
                    font-size: 16px;
                    height: 371px;
                    border-bottom-color:black;
                }
                .auto-style2 {
                    text-align: center;
                }
                .auto-style3 {
                    width: 70px;
                    height: 32px;
                    font-weight: bold;
                    cursor: pointer;
                }
                .auto-style9 {
                    width: 70px;
                    height: 32px;
                    font-size: small;
                }
                .auto-style10 {
                    width: 59%;
                    height: 181px;
                }
                .auto-style11 {
                    color: #FF0000;
                }
                .auto-style12 {
                    text-align: center;
                    height: 80px;
                }
                .auto-style13 {
                    font-weight: bold;
                    cursor: pointer;
                }
                .auto-style14 {
                    height: 246px;
                    background-color:rgba(245, 103, 2, 0.72);
                    text-align: center;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
                    margin-top: 0px;
                }
                .auto-style15 {
                    border-left: 12px solid transparent;
                    border-right: 12px solid transparent;
                    border-top: 12px solid transparent;
                    border-bottom: 12px solid rgb(255, 106, 0);
                    width: 0;
                    margin-right: auto;
                    margin-left: auto;
                    height: 4px;
                }
            </style>
</head>
<body>
    <div class="auto-style1">
  <div class="auto-style15"></div>
  
  <h2 class="login-header"><strong>Login Admin</strong></h2><br />

        <div class="auto-style14">
        <table align="center" class="auto-style10">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Label ID="Label1" runat="server" Text="Admin:"></asp:Label>
                    </strong>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" style="text-align:center;"></asp:TextBox>
                    <br />
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style11" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>
                    <asp:Label ID="Label2" runat="server" Text="Palavra-Passe:"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="text-align:center;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style11" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
        </table>
            <p class="auto-style2">
                <strong>
            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Entrar" Width="64px" CssClass="auto-style13" />
            </strong>&nbsp;<strong><input id="Reset1" class="auto-style3" type="reset" value="Limpar" /></strong></p>
            <br />
        </div>
      <p class="auto-style2">
          &nbsp;</p>
      <p class="auto-style2">
          &nbsp;</p>
      <p class="auto-style2">
        
        <span class="auto-style9" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em>©2019 Tânia Tavares</em></span></p>
  
</div>
    </body>
    </html>
</asp:Content>

