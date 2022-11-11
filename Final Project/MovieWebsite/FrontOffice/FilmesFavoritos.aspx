<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial2.master" AutoEventWireup="true" CodeFile="FilmesFavoritos.aspx.cs" Inherits="FrontOffice_FilmesFavoritos" %>

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

        .auto-style12 {
            margin-left: 1px;
        }
        
        .auto-style13 {
            text-align: center;
        }
        .alinhar{
            margin:0;
            text-align:center;
        }
        .auto-style14 {
            font-weight: bold;
            cursor:pointer;
        }
        .auto-style15 {
            text-decoration: underline;
            color: #339933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CssClass="auto-style12" Height="51px" ImageUrl="~/imagens/botão voltar.png" PostBackUrl="~/FrontOffice/AreaPessoal.aspx" Width="52px" />
    </p>
    <h1 class="auto-style13">
        <strong><em>Os meus Filmes Favoritos...</em></strong></h1>
    <h2 class="auto-style13">
        <br />
    </h2>
    <div class="alinhar">
        <strong>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="Favoritos" DataTextField="NomeFilme" DataValueField="NomeFilme" Font-Bold="True" Font-Italic="False" RepeatLayout="Flow" AutoPostBack="True" Font-Size="Large" Height="131px" Width="246px" BackColor="#FFFFCC" ForeColor="Black" OnSelectedIndexChanged="Button1_Click">
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="29px" Text="Salvar" Width="55px" OnClick="Button1_Click" />
        <br />
        <br />
        </strong>
        </div>
    <p class="auto-style13">
        &nbsp;</p>
    <p class="auto-style13">
        <strong>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver</asp:LinkButton>
        </strong>
    </p>
    <asp:Panel ID="Panelver" runat="server">
        <div class="auto-style13">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="verfav" Height="127px" HorizontalAlign="Center" Width="211px">
                <InsertItemTemplate>
                    NomeFilme:
                    <asp:TextBox ID="NomeFilmeTextBox" runat="server" Text='<%# Bind("NomeFilme") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <span class="auto-style15"><strong><em>Filmes Selecionados:</em></strong></span><br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" DataSourceID="verfav" GridLines="None" HorizontalAlign="Center">
                        <Columns>
                            <asp:BoundField DataField="NomeFilme" SortExpression="NomeFilme" />
                        </Columns>
                        <EmptyDataTemplate>
                            <asp:Label ID="Label1" runat="server" Text="<%# Bind('NomeFilme') %>"></asp:Label>
                        </EmptyDataTemplate>
                    </asp:GridView>
                    &nbsp;<strong><br />
                    </strong>
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </asp:Panel>
    <p class="auto-style13">
        <asp:SqlDataSource ID="verfav" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" SelectCommand="SELECT [NomeFilme] FROM [Favoritos]"></asp:SqlDataSource>
        &nbsp;<asp:SqlDataSource ID="Favoritos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" SelectCommand="SELECT [NomeFilme] FROM [InformacaoFilme]"></asp:SqlDataSource>
    </p>
    </asp:Content>

