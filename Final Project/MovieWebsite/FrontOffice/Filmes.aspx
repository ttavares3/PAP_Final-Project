<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial.master" AutoEventWireup="true" CodeFile="Filmes.aspx.cs" Inherits="FrontOffice_Filmes" %>

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
    .auto-style1 {
        font-size: large;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style3 {
            font-size: small;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            text-align: center;
            font-size: large;
        }
        .auto-style7 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style12 {
            margin-left: 1px;
        }
        
        .auto-style13 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style13">
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CssClass="auto-style12" Height="51px" ImageUrl="~/imagens/botão voltar.png" PostBackUrl="~/BackOffice/AreaAdmin.aspx" Width="52px" />
        </p>
    <p class="auto-style4">
    &nbsp;<strong><span class="auto-style1"><span class="auto-style2">Acção</span></span></strong></p>
    <p class="auto-style4">
        <strong><span class="auto-style1">&nbsp;&nbsp;&nbsp; <span class="auto-style2">
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style5" />
        </span></span></strong>
</p>
    <p class="auto-style4">
        <strong><span class="auto-style1">&nbsp;<span class="auto-style2"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Inserir" Width="59px" />
        </span></span></strong><br />
</p>
    <div class="auto-style4">
        <br />
        <strong><span class="auto-style1">
&nbsp;
<asp:Image ID="Image1" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme1.jpg" Width="157px" />
    &nbsp;<asp:Image ID="Image2" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme2.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image3" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme3.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image4" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme4.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image5" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme5.jpg" Width="157px" />
    </span></strong>
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" HorizontalAlign="Center" Height="227px" Width="157px">
                <Columns>
                    <asp:ImageField DataImageUrlField="path">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
    </div>
    <br />
&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
            <div>
                <p class="auto-style6">
                    <strong><span class="auto-style2">Aventura</span></strong></p>
                <div class="auto-style4">
&nbsp;&nbsp;&nbsp;
<asp:Image ID="Image6" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme6.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image7" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme7.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image8" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme8.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image9" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme9.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image10" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme10.jpg" Width="157px" />
                    <br />
                </div>
    </div>
    <br />
    <br />
    <br />
    <div class="auto-style4">
    <p class="auto-style1">
        <strong> <span class="auto-style2">Comédia</span></strong></p>
&nbsp;&nbsp;&nbsp;
<asp:Image ID="Image11" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme11.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image12" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme12.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image13" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme13.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image14" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme14.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image15" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme15.jpg" Width="157px" />
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <div class="auto-style4">
    <p class="auto-style7">
        <strong>Ficção Cientifica </strong>
</p>
&nbsp;&nbsp;&nbsp;
<asp:Image ID="Image16" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme16.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image17" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme17.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image18" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme18.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image19" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme19.jpg" Width="157px" />
&nbsp;<asp:Image ID="Image20" runat="server" Height="227px" ImageAlign="Middle" ImageUrl="~/imagens/filme20.jpg" Width="157px" />
    </div>
    <p class="auto-style1">
        <strong>&nbsp;&nbsp;&nbsp; </strong></p>
    <p class="auto-style6">
        <span class="auto-style3" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em>©2019 Tânia Tavares</em></span></p>
</asp:Content>

