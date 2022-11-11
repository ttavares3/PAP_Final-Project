<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial2.master" AutoEventWireup="true" CodeFile="RecuperacaodePass.aspx.cs" Inherits="FrontOffice_RecuperacaodePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .auto-style1 {
            width: 456px;
            margin: 0px auto 16px auto;
            font-size: 16px;
            height: 330px;
            border-bottom-color: black;
        }

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

        .login-header {
            margin-top: 0;
            margin-bottom: 0;
        }

        .auto-style2 {
            text-align: center;
            font-weight: bold;
            cursor: pointer;
        }

        .auto-style9 {
            width: 70px;
            height: 32px;
            font-size: small;
        }
        .auto-style10 {
            width: 82%;
            height: 64px;
        }
        .auto-style11 {
            font-size: medium;
            width: 81px;
            text-align: center;
        }
        .auto-style12 {
            font-weight: bold;
            cursor: pointer;
        }

            .auto-style3 {
                width: 70px;
                height: 32px;
                font-weight: bold;
                cursor: pointer;
            }

            .auto-style13 {
            font-size: large;
            width: 81px;
            text-align: center;
            height: 34px;
        }
        .auto-style14 {
            height: 34px;
            text-align: left;
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
            text-align: center;
            height: 207px;
            background-color:rgba(34, 136, 221, 0.71);
                    text-align: center;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
        }
        .auto-style17 {
            text-align: left;
        }

            </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auto-style1">
        <div class="auto-style15"></div>

        <h2 class="login-header"><strong>Recuperar Palavra-Passe</strong></h2><br />
        <div class="auto-style16">
            <strong>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Para recuperar a sua Palavra-Passe, insira o seu email:"></asp:Label>
            </strong>
            <br />
            <br />
            <br />
            <table class="auto-style10" align="center">
                <tr>
                    <td class="auto-style13"><strong>Email:</strong></td>
                    <td class="auto-style14">&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" style="text-align:center;"></asp:TextBox>
                        <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style17">&nbsp;&nbsp; <strong> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong></td>
                </tr>
            </table>
            <br />
                <strong>
                <asp:Button ID="Button1" runat="server" Text="Submeter" Width="76px" CssClass="auto-style12" Height="32px" OnClick="recuperarpass" />
                <input id="Reset1" class="auto-style3" type="reset" value="Limpar" /></strong></div>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">

            <span class="auto-style9" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em>©2019 Tânia Tavares</em></span>
        </p>

    </div>
</asp:Content>

