<%@ Page Title="" Language="C#" MasterPageFile="/FrontOffice/MPInicial2.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="FrontOffice_Login" %>

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
  border-bottom-color: #28d;
}

.login-header {
  background: #28d;
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
                    width: 316px;
                    margin: 0px auto 16px auto;
                    font-size: 16px;
                    height: 395px;
                    border-bottom-color:black;
                }
                .auto-style2 {
                    text-align: center;
                    cursor: pointer;
                }
                .auto-style3 {
                    width: 70px;
                    height: 32px;
                    cursor: pointer;
                    font-weight: bold;
                }
                .auto-style10 {
                    width: 38%;
                    height: 135px;
                    margin-top: 0px;
                    margin-bottom: 0px;
                }
                .auto-style11 {
                    color: #FF0000;
                }
                .auto-style12 {
                    text-align: center;
                    height: 70px;
                }
                .auto-style13 {
                    text-align: center;
                    cursor: pointer;
                    font-weight: bold;
                }
                .auto-style4 {
                    font-size: small;
                }
                .auto-style14 {
                    text-align: center;
                    cursor: pointer;
                    height: 105px;
                }
                .auto-style15 {
                    border-left: 12px solid transparent;
                    border-right: 12px solid transparent;
                    border-top: 12px solid transparent;
                    border-bottom: 12px solid #28d;
                    width: 0;
                    margin-right: auto;
                    margin-left: auto;
                    height: 2px;
                }
                .auto-style16 {
                    height: 260px;
                    background-color:rgba(34, 136, 221, 0.71);
                    text-align: center;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
            
            padding: 20px;
            margin: 7px auto 5px auto;
                    width: 275px;
                }
                </style>
</head>
<body>
    <div class="auto-style1">
  <div class="auto-style15"></div>
  
  <h2 class="login-header"><strong>Login</strong></h2>
        <div class="auto-style16">
        <table align="center" class="auto-style10">
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Label ID="Label1" runat="server" Text="Utilizador:"></asp:Label>
                    </strong>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" style="text-align:center;"></asp:TextBox>
                    <br />
                    <strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style11" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>
                    <asp:Label ID="Label2" runat="server" Text="Palavra-Passe:"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" style="text-align:center;"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style11" ErrorMessage="Obrigatório"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
        </table>
            <strong>
            <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Entrar" Width="64px" CssClass="auto-style13" />
            &nbsp;<input id="Reset1" class="auto-style3" type="reset" value="Limpar" /><br />
            <br />
            <asp:Button ID="Button2" runat="server" Height="32px" PostBackUrl="~/FrontOffice/RecuperacaodePass.aspx" Text="Recuperar Pass" CausesValidation="False" CssClass="auto-style13" Width="121px" />
            </strong>
        </div>

        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            <span class="auto-style3" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em><span class="auto-style4">©2019 Tânia Tavares</span></em></span></p>
  
</div>
    </body>
    </html>
</asp:Content>

