<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial2.master" AutoEventWireup="true" CodeFile="EnviarMensagens.aspx.cs" Inherits="FrontOffice_EnviarMensagens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body {
            font-family: 'Open Sans', sans-serif;
        }

                .auto-style1 {
                    width: 599px;
                    margin: 16px auto;
                    font-size: 16px;
                    height: 605px;
                    border-bottom-color:black;
            text-align: center;
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
                }
                .auto-style11 {
            border-left: 12px solid transparent;
            border-right: 12px solid transparent;
            border-top: 12px solid transparent;
            border-bottom: 12px solid #28d;
            width: 0;
            margin-right: auto;
            margin-left: auto;
            text-align: right;
            height: 1px;
        }
        .auto-style12 {
            margin-left: 1px;
        }
        
        .auto-style17 {
            font-size: x-large;
        }

                .auto-style5 {
                    width: 85%;
                    height: 324px;
                }
                .auto-style9 {
                    width: 98px;
                    text-align: center;
                    height: 35px;
                }
                .auto-style10 {
                    height: 35px;
                }
                .auto-style8 {
                    width: 98px;
                    text-align: center;
                }
                .auto-style13 {
            width: 98px;
            text-align: center;
            height: 195px;
        }
        .auto-style14 {
            text-align: center;
            height: 195px;
        }
        .auto-style15 {
            font-weight: bold;
            cursor: pointer;
        }
        .auto-style16 {
            width: 66px;
            height: 30px;
            font-weight: bold;
            cursor: pointer;
        }

        .auto-style18 {
            height: 433px;
            margin-top: 11px;
            background-color:rgba(34, 136, 221, 0.71);
                    text-align: left;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
        }

                </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">
        <div class="auto-style11">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
        <h2 class="login-header"><strong><span class="auto-style17">Enviar Mensagens</span></strong></h2>
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CssClass="auto-style12" Height="51px" ImageUrl="~/imagens/botão voltar.png" PostBackUrl="~/FrontOffice/AreaPessoal.aspx" Width="52px" />
        <div class="auto-style18">
            <br />
        <table align="center" class="auto-style5">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Label ID="Label4" runat="server" Text="De:"></asp:Label>
                    </strong></td>
                <td class="auto-style10">&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="271px"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Label ID="Label9" runat="server" Text="Para:"></asp:Label>
                    </strong></td>
                <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="271px">Administrador</asp:TextBox>
                    <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
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
                <td class="auto-style13"><strong>
                    <asp:Label ID="Label3" runat="server" Text="Texto:"></asp:Label>
                    </strong></td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Height="101px" Width="375px" TextMode="MultiLine"></asp:TextBox>
                    <strong>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
        </table>
        <p class="auto-style2">
            <strong>
            <asp:Button ID="Buttonenviar" runat="server" Height="30px" Text="Enviar" Width="62px" OnClick="Button1_Click" CssClass="auto-style15" />
            </strong>&nbsp;<strong><input id="Reset1" class="auto-style16" type="reset" value="Limpar"/></strong> </p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>

