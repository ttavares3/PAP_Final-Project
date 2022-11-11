<%@ Page Title="" Language="C#" MasterPageFile="~/BackOffice/MPAdmin2.master" AutoEventWireup="true" CodeFile="AreaAdmin.aspx.cs" Inherits="BackOffice_AreaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style1 {
            font-size: large;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            width: 99%;
            height: 165px;
            background-color:rgba(245, 103, 2, 0.72);
        }
        .auto-style14 {
            width: 146px;
            font-size: large;
            text-align: center;
        }
        .auto-style10 {
            width: 146px;
            text-align: center;
            height: 38px;
        }
        .auto-style15 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style16 {
            height: 38px;
        }
        .auto-style17 {
            width: 146px;
            font-size: large;
            text-align: center;
            height: 62px;
        }
        .auto-style18 {
            height: 62px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style4">
        <strong>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style3" OnClick="LinkButton1_Click">Sair</asp:LinkButton>
        </strong>
    </p>
    <p>
        <br />
        <strong>&nbsp;<asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Bem-Vindo, "></asp:Label>
        </strong>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p class="auto-style15">
        <strong>Opções:</strong></p>
    <p class="auto-style1">
        &nbsp;</p>
    <p>
        <strong><asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style4" OnClick="LinkButton2_Click" CausesValidation="False">1 - Ver os meus dados</asp:LinkButton>
        &nbsp;&nbsp; 
        </strong>
    </p>
    <p>
        <strong> <asp:LinkButton ID="LinkButton7" runat="server" CssClass="auto-style4" OnClick="LinkButton7_Click" CausesValidation="False">2 - Ver todos os Utilizadores</asp:LinkButton>
        &nbsp;
        </strong>
    </p>
    <p>
        <strong>
        <asp:LinkButton ID="LinkButton8" runat="server" CausesValidation="False" PostBackUrl="~/BackOffice/VerMensagens.aspx">3 - Ver Mensagens</asp:LinkButton>
        </strong>
    </p>
    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="652px">
        &nbsp;&nbsp;
        <table class="auto-style5">
            <tr>
                <td class="auto-style14"><strong>Utilizador:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style17"><strong>Email: </strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>
                    <br />
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" CausesValidation="False">Editar</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                <td class="auto-style16">
                    <strong>
                    <br />
                    </strong>&nbsp;<strong><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" CausesValidation="False">Actualizar</asp:LinkButton>
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" CausesValidation="False">Eliminar Conta</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" CausesValidation="False">Fechar</asp:LinkButton>
                    &nbsp;&nbsp; </strong></td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        &nbsp;</p>
    </asp:Content>

