<%@ Page Title="" Language="C#" MasterPageFile="~/FrontOffice/MPinicial2.master" AutoEventWireup="true" CodeFile="VerMensagens.aspx.cs" Inherits="FrontOffice_VerMensagens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        body {
            font-family: 'Open Sans', sans-serif;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style12 {
            margin-left: 1px;
        }
        .auto-style13 {
            text-align: left;
        }
                .auto-style3 {
                    width: 66px;
                    height: 30px;
                }
                .auto-style4 {
                    font-size: small;
                }
                </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style13">
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CssClass="auto-style12" Height="51px" ImageUrl="~/imagens/botão voltar.png" PostBackUrl="~/FrontOffice/AreaPessoal.aspx" Width="52px" />
    </p>
    <p class="auto-style1">
        <strong><em>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style2" Text="Mensagens:"></asp:Label>
        </em></strong>
    </p>
    <p class="auto-style1">
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="Resposta" ForeColor="#333333" GridLines="None" Height="434px" HorizontalAlign="Center" Width="984px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:BoundField DataField="De" HeaderText="De" ReadOnly="True" SortExpression="De" />
                <asp:BoundField DataField="Para" HeaderText="Para" SortExpression="Para" Visible="False" />
                <asp:BoundField DataField="Assunto" HeaderText="Assunto" ReadOnly="True" SortExpression="Assunto" />
                <asp:BoundField DataField="Texto" HeaderText="Texto" ReadOnly="True" SortExpression="Texto" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="Resposta" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [RespostaMensagens] WHERE [Id] = @Id" InsertCommand="INSERT INTO [RespostaMensagens] ([De], [Para], [Assunto], [Texto]) VALUES (@De, @Para, @Assunto, @Texto)" SelectCommand="SELECT * FROM [RespostaMensagens]" UpdateCommand="UPDATE [RespostaMensagens] SET [De] = @De, [Para] = @Para, [Assunto] = @Assunto, [Texto] = @Texto WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="De" Type="String" />
                <asp:Parameter Name="Para" Type="String" />
                <asp:Parameter Name="Assunto" Type="String" />
                <asp:Parameter Name="Texto" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="De" Type="String" />
                <asp:Parameter Name="Para" Type="String" />
                <asp:Parameter Name="Assunto" Type="String" />
                <asp:Parameter Name="Texto" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style1">
            <span class="auto-style3" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span><em>&nbsp;</em></span></span></p>
    <p class="auto-style1">
        <span class="auto-style3" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em><span class="auto-style4">©2019 Tânia Tavares</span></em></span></p>
</asp:Content>

