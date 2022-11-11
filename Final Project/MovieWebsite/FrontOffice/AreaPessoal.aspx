<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial2.master" AutoEventWireup="true" CodeFile="AreaPessoal.aspx.cs" Inherits="FrontOffice_AreaPessoal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body {
            font-family: 'Open Sans', sans-serif;

        }
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            font-size: large;
            color: #FF0000;
        }
        .auto-style5 {
            width: 100%;
            height: 234px;
            background-color:rgba(34, 136, 221, 0.71);
        }
        .auto-style10 {
            width: 150px;
            text-align: center;
            height: 126px;
        }
        .auto-style14 {
            width: 150px;
            font-size: large;
            text-align: center;
        }
        .auto-style15 {
            width: 150px;
            font-size: large;
            height: 46px;
            text-align: center;
        }
        .auto-style16 {
            height: 46px;
            text-align: left;
            width: 497px;
        }
        .auto-style17 {
            text-decoration: underline;
        }
        .auto-style18 {
            margin-top: 0px;
            text-align: right;
        }
        .auto-style19 {
            margin-bottom: 0px;
        }
        .auto-style20 {
            text-align: left;
            width: 497px;
        }
        .auto-style21 {
            text-align: left;
            height: 126px;
            width: 497px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style2">
        <strong>
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style3" OnClick="LinkButton1_Click">Sair</asp:LinkButton>
        </strong>
    </p>
    <p>
        <br />
        <strong>&nbsp;<asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Bem-Vindo, "></asp:Label>
        </strong>
    </p>
    <br />
    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    <p>
        <strong>&nbsp;Aqui tem acesso aos seus dados. </strong>
    </p>
    <p>
        <strong>&nbsp;Poderá modificá-los se assim desejar ou até mesmo apagar a sua conta.</strong></p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        <strong>&nbsp;
    <asp:ImageButton ID="ImageButton2" runat="server" Height="45px" ImageUrl="~/imagens/verDados1.PNG" OnClick="ImageButton2_Click" Width="60px" />
&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton3" runat="server" Height="48px" ImageUrl="~/imagens/responder.png" PostBackUrl="~/FrontOffice/EnviarMensagens.aspx" Width="58px" />
&nbsp;&nbsp;
&nbsp;
    <asp:ImageButton ID="ImageButton4" runat="server" Height="48px" ImageUrl="~/imagens/vermensagens.png" PostBackUrl="~/FrontOffice/VerMensagens.aspx" Width="61px" />
        &nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton9" runat="server" Height="48px" ImageUrl="~/imagens/favoritos.png" PostBackUrl="~/FrontOffice/FilmesFavoritos.aspx" Width="61px" />
        </strong>
    <asp:Panel ID="Panel1" runat="server" Visible="False" CssClass="auto-style18" Height="308px" Width="617px">
        &nbsp;&nbsp;
        <table class="auto-style5">
            <tr>
                <td class="auto-style14"><strong>Utilizador:</strong></td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style15"><strong>Email: </strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style10"><strong>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
                <td class="auto-style21">
                    <strong>
                    <span class="auto-style17">
                    <em>Opções:</em></span>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="51px" ImageUrl="~/imagens/actualizardados.jpg.png" OnClick="ImageButton5_Click" Width="46px" />
                    &nbsp;&nbsp;<asp:ImageButton ID="ImageButton6" runat="server" Height="51px" ImageUrl="~/imagens/editardados.jpg.png" OnClick="ImageButton6_Click" Width="52px" />
                    &nbsp;
                    <asp:ImageButton ID="ImageButton7" runat="server" CssClass="auto-style19" Height="51px" ImageUrl="~/imagens/eliminarconta.png" OnClick="ImageButton7_Click" Width="56px" />
                    &nbsp;</strong></td>
            </tr>
        </table>
        <strong>
        <br />
        <asp:ImageButton ID="ImageButton8" runat="server" Height="36px" ImageUrl="~/imagens/fechar.png" OnClick="ImageButton8_Click" Width="33px" />
        </strong>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;<br /></asp:Panel>
    <p>
        &nbsp;</p>
</asp:Content>

