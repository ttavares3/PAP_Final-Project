<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial2.master" AutoEventWireup="true" CodeFile="Registar.aspx.cs" Inherits="FrontOffice_Registar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                width: 696px;
                margin: 16px auto;
                font-size: 16px;
                height: 400px;
                border-bottom-color: black;
                text-align: center;
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

            .auto-style5 {
                width: 99%;
                height: 213px;
            }

            .auto-style8 {
                width: 131px;
            }

            .auto-style9 {
                width: 70px;
                height: 32px;
                font-size: small;
            }

            .auto-style13 {
                font-weight: bold;
                cursor: pointer;
            }
            .auto-style14 {
                height: 270px;
                background-color:rgba(34, 136, 221, 0.71);
                    text-align: center;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
                width: 698px;
            }
            .auto-style15 {
                text-align: left;
            }
        </style>
    </head>
    <body>
        <div class="auto-style1">
            <div class="login-triangle"></div>

            <h2 class="login-header"><strong>Registo</strong></h2>
            <br />
            <div class="auto-style14">

            <table class="auto-style5">
                <tr>
                    <td class="auto-style8"><strong>Utilizador:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox5" runat="server" Width="120px"></asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Email:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Email" Width="192px"></asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<strong><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Palavra-Passe:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<strong><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Não é uma Palavra-Passe válida!" ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Confirmar Pass:</strong></td>
                    <td class="auto-style15">
                        <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>&nbsp;<strong><asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Palavra Passe diferente!" ForeColor="Red"></asp:CompareValidator>
                        </strong></td>
                </tr>
            </table>


                <strong>
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Registar" Width="67px" CssClass="auto-style13" />
                &nbsp;<input id="Reset1" class="auto-style3" type="reset" value="Limpar" /></strong><br />
                <br />
            </div>
            <p class="auto-style2">
                &nbsp;
            </p>
            <p class="auto-style2">

                <span class="auto-style9" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em>©2019 Tânia Tavares</em></span>
            </p>

        </div>
    </body>
    </html>
</asp:Content>
