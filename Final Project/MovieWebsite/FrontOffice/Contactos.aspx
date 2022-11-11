<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial2.master" AutoEventWireup="true" CodeFile="Contactos.aspx.cs" Inherits="FrontOffice_Contactos" %>

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
                    width: 630px;
                    margin: 16px auto;
                    font-size: 16px;
                    height: 533px;
                    border-bottom-color:black;
                }
                .auto-style2 {
                    text-align: center;
                    cursor: pointer;
                }
                .auto-style3 {
                    width: 66px;
                    height: 30px;
                    cursor: pointer;
                }
                .auto-style4 {
                    font-size: small;
                }
                .auto-style5 {
                    width: 78%;
                    height: 255px;
                }
                .auto-style7 {
                    width: 98px;
                }
                .auto-style8 {
                    width: 98px;
                    text-align: center;
                }
                .auto-style9 {
                    width: 98px;
                    text-align: center;
                    height: 35px;
                }
                .auto-style10 {
                    height: 35px;
                }
                .auto-style11 {
                    text-align: center;
                    cursor: pointer;
                    font-weight: bold;
                }
                .auto-style12 {
                    width: 66px;
                    height: 30px;
                    cursor: pointer;
                    font-weight: bold;
                }
                .auto-style13 {
                    height: 424px;
                    background-color:rgba(34, 136, 221, 0.71);
                    text-align: center;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
                }
            </style>
</head>
<body>
    <div class="auto-style1">
  <div class="login-triangle"></div>
  
  <h2 class="login-header"><strong>Formulário de Contacto</strong></h2>

  
        <div class="auto-style13">
      <p class="auto-style2">
          &nbsp;</p>
            <p class="auto-style2">
                <strong>Para nos puder contactar, basta preencher o formulário seguinte:</strong></p>
      <p class="auto-style2">
          &nbsp;</p>
      <table align="center" class="auto-style5">
          <tr>
              <td class="auto-style9"><strong>
                  <asp:Label ID="Label1" runat="server" Text="Destinatário:"></asp:Label>
                  </strong></td>
              <td class="auto-style10">&nbsp;
                  <asp:TextBox ID="TextBox1" runat="server" Width="271px">contatesteaspx@gmail.com</asp:TextBox>
&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
          </strong></td>
          </tr>
          <tr>
              <td class="auto-style8"><strong>
                  <asp:Label ID="Label2" runat="server" Text="Assunto:"></asp:Label>
                  </strong></td>
              <td>&nbsp;
                  <asp:TextBox ID="TextBox2" runat="server" Width="271px"></asp:TextBox>
                  <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
          </strong></td>
          </tr>
          <tr>
              <td class="auto-style7">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style8"><strong>
                  <asp:Label ID="Label3" runat="server" Text="Texto:"></asp:Label>
                  </strong></td>
              <td class="auto-style2">
                  <asp:TextBox ID="TextBox3" runat="server" Height="101px" TextMode="MultiLine" Width="375px"></asp:TextBox>
                  <strong>
                  <br />
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
          </strong></td>
          </tr>
      </table>
      <p class="auto-style2">
          <strong>
          <asp:Button ID="Button1" runat="server" Height="30px" Text="Enviar" Width="62px" OnClick="Button1_Click" CssClass="auto-style11" />
          </strong>&nbsp;<strong><input id="Reset1" class="auto-style12" type="reset" value="Limpar" /></strong></p>
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>

  
      <p class="auto-style2">
          &nbsp;</p>
      <p class="auto-style2">
        
        <span class="auto-style3" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span><em>&nbsp;</em></span><em><span class="auto-style4">©2019 Tânia Tavares</span></em></span></p>
  
</div>
    </body>
    </html>
</asp:Content>
