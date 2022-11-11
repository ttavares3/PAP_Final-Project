<%@ Page Title="" Language="C#" MasterPageFile="~/BackOffice/MPAdmin2.master" AutoEventWireup="true" CodeFile="VerMensagens.aspx.cs" Inherits="BackOffice_VerMensagens" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
                .auto-style9 {
                    width: 111px;
                    text-align: center;
                    height: 35px;
                }
                </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style24">
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CssClass="auto-style12" Height="51px" ImageUrl="~/imagens/botão voltar.png" PostBackUrl="~/BackOffice/AreaAdmin.aspx" Width="52px" />
        </p>
    <p class="auto-style2">
        <strong><em>
        <asp:Label ID="Label10" runat="server" CssClass="auto-style23" Text="Mensagens:"></asp:Label>
        </em></strong>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="VerMensagens" ForeColor="Black" Height="399px" HorizontalAlign="Center" Width="1052px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Selecionar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:TemplateField HeaderText="De" SortExpression="De">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("De") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Para" SortExpression="Para">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Para") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Assunto" SortExpression="Assunto">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Assunto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Texto" SortExpression="Texto">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Texto") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Lida" SortExpression="Lida">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Lida") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Sim</asp:ListItem>
                            <asp:ListItem>Não</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Lida") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="VerMensagens" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [Mensagens] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Mensagens] ([Para], [Assunto], [Texto], [Lida], [De]) VALUES (@Para, @Assunto, @Texto, @Lida, @De)" SelectCommand="SELECT * FROM [Mensagens]" UpdateCommand="UPDATE [Mensagens] SET [Para] = @Para, [Assunto] = @Assunto, [Texto] = @Texto, [Lida] = @Lida, [De] = @De WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Para" Type="String" />
                <asp:Parameter Name="Assunto" Type="String" />
                <asp:Parameter Name="Texto" Type="String" />
                <asp:Parameter Name="Lida" Type="String" />
                <asp:Parameter Name="De" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Para" Type="String" />
                <asp:Parameter Name="Assunto" Type="String" />
                <asp:Parameter Name="Texto" Type="String" />
                <asp:Parameter Name="Lida" Type="String" />
                <asp:Parameter Name="De" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p class="auto-style2">
        &nbsp;</p>
    <p class="auto-style2">
        <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" ImageUrl="~/imagens/btresponder.png" OnClick="ImageButton3_Click" Width="62px" />
    </p>
    <!DOCTYPE html>
    <html>
        <head>
            <style>
                
                /* 'Open Sans' font from Google Fonts */
@import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700);

body {
  font-family: 'Open Sans', sans-serif;
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
                .auto-style2 {
                    text-align: center;
                }
                .auto-style9 {
                    width: 70px;
                    height: 32px;
                    font-size: small;
                }
                .auto-style11 {
                    font-size: 16px;
                    width: 499px;
                    height: 420px;
                    border-bottom-color: black;
                    margin: 16px auto;
                   
                }
                .auto-style12 {
                    width: 95%;
                    height: 415px;
                }
                .auto-style13 {
                    width: 325px;
                    height: 59px;
                    font-size: small;
                    text-align: center;
                }
                .auto-style15 {
                    font-size: 16px;
                }
                .auto-style14 {
                    height: 59px;
                    width: 86%;
                    text-align: left;
                }
                .auto-style7 {
                    width: 325px;
                }
                .auto-style17 {
                    text-align: left;
                    width: 86%;
                }
                .auto-style20 {
                    text-align: center;
                    width: 86%;
                    cursor:pointer;
                }
                .auto-style21 {
                    font-size: medium;
                }
                .auto-style22 {
                    font-weight: bold;
                    cursor:pointer;
                }
                .auto-style23 {
                    text-align: center;
                    font-size: xx-large;
                    text-decoration: underline;
                }
                .auto-style24 {
                    text-align: left;
                }
                .auto-style25 {
                    width: 325px;
                    text-align: center;
                    height: 207px;
                }
                .auto-style26 {
                    text-align: left;
                    width: 86%;
                    height: 207px;
                }
                .auto-style27 {
                    width: 94%;
                    height: 416px;
                     background-color:rgba(245, 103, 2, 0.72);
                    text-align: center;
                    opacity: 1;
            filter: alpha(opacity=70);
            zoom: 1;
                }
                .auto-style3 {
                    width: 70px;
                    height: 32px;
                    font-weight: bold;
                    cursor: pointer;
                }
                .auto-style30 {
                    width: 295px;
                    text-align: center;
                    cursor: pointer;
                }
                .auto-style31 {
                    width: 325px;
                    text-align: center;
                    cursor: pointer;
                }
                </style>
</head>
<body>
    <div class="auto-style11">
        <asp:Panel ID="Panel1" runat="server" Height="429px" Width="531px">
            <table align="center" class="auto-style27">
                <tr>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style21" Text="De:"></asp:Label>
                        </strong></td>
                    <td class="auto-style14">&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server" Width="271px">Administrador</asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style31"><strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style15" Text="Para:"></asp:Label>
                        </strong></td>
                    <td class="auto-style17">&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" Width="271px"></asp:TextBox>
                        &nbsp;<strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style7"><strong>
                        <asp:Label ID="Label7" runat="server" Text="Assunto:"></asp:Label>
                        </strong></td>
                    <td class="auto-style17">&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" Width="271px"></asp:TextBox>
                        <strong>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style25"><strong>
                        <asp:Label ID="Label8" runat="server" Text="Texto:"></asp:Label>
                        </strong></td>
                    <td class="auto-style26">&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" Height="101px" TextMode="MultiLine" Width="375px"></asp:TextBox>
                        <strong>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Obrigatório" ForeColor="Red"></asp:RequiredFieldValidator>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style31">&nbsp;</td>
                    <td class="auto-style20">
                        <strong>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CssClass="auto-style22" Height="32px" OnClick="Button1_Click" Text="Enviar" Width="69px" />
                        &nbsp;<input id="Reset1" class="auto-style3" type="reset" value="Limpar" /></strong></td>
                </tr>
            </table>
        </asp:Panel>
        <p class="auto-style2">
        
            &nbsp;</p>
        <p class="auto-style2">
        
            &nbsp;</p>
        <p class="auto-style2">
        
            &nbsp;</p>
        <p class="auto-style2">
        
            &nbsp;</p>
        <p class="auto-style2">
        
            &nbsp;</p>
        <p class="auto-style2">
        
            &nbsp;</p>
        <p class="auto-style2">
        
            &nbsp;</p>
        <p class="auto-style2">
        
            <span class="auto-style9" style="color: rgb(84, 84, 84); font-family: arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><em>©2019 Tânia Tavares</em></span></p>
  
</div>
    </body>
    </html>
</asp:Content>

