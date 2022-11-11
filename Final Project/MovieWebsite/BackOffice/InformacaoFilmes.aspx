<%@ Page Title="" Language="C#" MasterPageFile="~/BackOffice/MPAdmin2.master" AutoEventWireup="true" CodeFile="InformacaoFilmes.aspx.cs" Inherits="BackOffice_InformacaoFilmes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
    .auto-style2 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <style>
                
                /* 'Open Sans' font from Google Fonts */
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
  font-family: 'Open Sans', sans-serif;
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
  background: rgb(255, 106, 0);
  padding: 12px;
}

/* Every row inside .login-container is defined with p tags */
.login p {
  padding: 12px;
}
                .auto-style2 {
                    text-align: center;
                    cursor: pointer;
                }
                .auto-style5 {
            width: 92%;
            height: 213px;
        }
                .auto-style8 {
                    width: 131px;
                    text-align: center;
                }
                .auto-style10 {
        font-size: 16px;
        width: 461px;
        height: 461px;
        border-bottom-color: black;
        margin: 16px auto;
    }
                .auto-style11 {
                    font-weight: bold;
                    cursor: pointer;
                }
                .auto-style12 {
                    font-weight: bold;
                    cursor: pointer;
                    width: 63px;
                    height: 32px;
                }
            .auto-style13 {
        border-left: 12px solid transparent;
        border-right: 12px solid transparent;
        border-top: 12px solid transparent;
        border-bottom: 12px solid rgb(255, 106, 0);
        width: 0;
        margin-right: auto;
        margin-left: auto;
        height: 1px;
    }
                .auto-style14 {
                    height: 277px;
                     background-color:rgba(245, 103, 2, 0.72);
                    text-align: center;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
                }
                .auto-style15 {
                    text-align: left;
                }
                .auto-style9 {
                    width: 70px;
                    height: 32px;
                    font-size: small;
                }
                </style>
</head>
<body>
    <div class="auto-style10">
  <div class="auto-style13"></div>
  
  <h2 class="login-header"><strong>Registar Filme</strong></h2>
        <br />
        <div class="auto-style14">

        <table class="auto-style5" align="center">
            <tr>
                <td class="auto-style8"><strong>Nome do Filme:</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox1" runat="server" Width="154px"></asp:TextBox>
&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Genêro:</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" Width="120px"></asp:TextBox>
&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Ano:</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Number" Width="59px"></asp:TextBox>
&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>Realizador:</strong></td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
        </table>

  
      <p class="auto-style2">
          <strong>
          <asp:Button ID="Button1" runat="server" Height="32px" Text="Registar" Width="67px" OnClick="Button1_Click" CssClass="auto-style11" />
          &nbsp; <input id="Reset1" class="auto-style12" type="reset" value="Limpar" /></strong></p>
            <p class="auto-style2">
                &nbsp;</p>
            <p class="auto-style2">
                <span class="auto-style9" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em>©2019 Tânia Tavares</em></span></p>
            <br />
            <br />
        </div>
        <br />

        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            &nbsp;</p>
      <p class="auto-style2">
        
          &nbsp;</p>
  
</div>
    </body>
    </html>
<br />
</asp:Content>

