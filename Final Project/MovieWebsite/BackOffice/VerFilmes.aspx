<%@ Page Title="" Language="C#" MasterPageFile="~/BackOffice/MPAdmin2.master" AutoEventWireup="true" CodeFile="VerFilmes.aspx.cs" Inherits="BackOffice_VerFilmes" %>

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
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: large;
            text-decoration: underline;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
            height: 453px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    &nbsp;</p>
<p class="auto-style1">
    <strong><em>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Informação sobre os Filmes:"></asp:Label>
    </em></strong>
</p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <strong>
        <asp:Label ID="Label2" runat="server" Text="Pesquisa:"></asp:Label>
&nbsp;</strong><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Encontrar" OnClick="Button1_Click" />
&nbsp;</p>
    <p class="auto-style1">
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
    <p class="auto-style1">
        &nbsp;</p>
    <p class="auto-style1">
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style3" GridLines="Both" Height="148px" HorizontalAlign="Center" Width="265px">
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <strong>
                <asp:Label ID="Label12" runat="server" CssClass="auto-style4" Text="Resultado:"></asp:Label>
                <em>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Título:"></asp:Label>
                </em>&nbsp;</strong><asp:Label ID="Label4" runat="server" Text='<%# Bind("NomeFilme") %>'></asp:Label>
                <br />
                <strong><em>
                <asp:Label ID="Label9" runat="server" Text="Gênero:"></asp:Label>
                </em>&nbsp;</strong><asp:Label ID="Label5" runat="server" Text='<%# Bind("Genero") %>'></asp:Label>
                <br />
                <strong><em>
                <asp:Label ID="Label10" runat="server" Text="Ano de Lançamento:"></asp:Label>
                </em>&nbsp;</strong><asp:Label ID="Label6" runat="server" Text='<%# Bind("Ano") %>'></asp:Label>
                <br />
                <strong><em>
                <asp:Label ID="Label11" runat="server" Text="Realizador:"></asp:Label>
                </em>&nbsp;</strong><asp:Label ID="Label7" runat="server" Text='<%# Bind("Realizador") %>'></asp:Label>
            </ItemTemplate>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:FormView>
    </p>
    <p class="auto-style1">
        </p>
    <p class="auto-style1">
        </p>
    <p class="auto-style1">
        </p>
    <p class="auto-style1">
        <strong>
        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CssClass="auto-style3" OnClick="LinkButton1_Click">Editar Filmes</asp:LinkButton>
        </strong></p>
    <p class="auto-style1">
        </p>
    <asp:Panel ID="Panel1" runat="server" Height="494px">
        <div class="auto-style5">
            <br />
            <div class="auto-style6">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="VerFilmes" ForeColor="Black" Height="353px" HorizontalAlign="Center" Width="757px">
                    <Columns>
                        <asp:CommandField CancelText="Cancelar" DeleteText="Eliminar" EditText="Editar" SelectText="Selecionar" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                        <asp:BoundField DataField="NomeFilme" HeaderText="NomeFilme" SortExpression="NomeFilme" />
                        <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                        <asp:BoundField DataField="Ano" HeaderText="Ano" SortExpression="Ano" />
                        <asp:BoundField DataField="Realizador" HeaderText="Realizador" SortExpression="Realizador" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <strong>
                <asp:SqlDataSource ID="VerFilmes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [InformacaoFilme] WHERE [Id] = @Id" InsertCommand="INSERT INTO [InformacaoFilme] ([NomeFilme], [Genero], [Ano], [Realizador]) VALUES (@NomeFilme, @Genero, @Ano, @Realizador)" SelectCommand="SELECT * FROM [InformacaoFilme]" UpdateCommand="UPDATE [InformacaoFilme] SET [NomeFilme] = @NomeFilme, [Genero] = @Genero, [Ano] = @Ano, [Realizador] = @Realizador WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NomeFilme" Type="String" />
                        <asp:Parameter Name="Genero" Type="String" />
                        <asp:Parameter Name="Ano" Type="Int32" />
                        <asp:Parameter Name="Realizador" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NomeFilme" Type="String" />
                        <asp:Parameter Name="Genero" Type="String" />
                        <asp:Parameter Name="Ano" Type="Int32" />
                        <asp:Parameter Name="Realizador" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CssClass="auto-style3" OnClick="LinkButton2_Click">Fechar</asp:LinkButton>
                </strong>
            </div>
        </div>
        <br />
    </asp:Panel>
    <p class="auto-style1">
    <br />
</p>
</asp:Content>

