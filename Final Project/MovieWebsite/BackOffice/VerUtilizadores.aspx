<%@ Page Title="" Language="C#" MasterPageFile="~/BackOffice/MPAdmin2.master" AutoEventWireup="true" CodeFile="VerUtilizadores.aspx.cs" Inherits="BackOffice_VerUtilizadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: center;
        }
                .auto-style12 {
                    width: 95%;
                    height: 415px;
                }
                </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style1">
        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CssClass="auto-style12" Height="51px" ImageUrl="~/imagens/botão voltar.png" PostBackUrl="~/BackOffice/AreaAdmin.aspx" Width="52px" />
    </p>
    <p class="auto-style3">
        <br />
        <strong><em>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Lista de Utilizadores:"></asp:Label>
        </em></strong>
    </p>
    <p class="auto-style3">
        &nbsp;</p>
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceVerUsers" Height="351px" Width="972px" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" OnClientClick="return confirm('Tem a certeza que pretende Editar?');" Visible="False"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" OnClientClick="return confirm('Tem a certeza que pretende Eliminar?');" Visible="False"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:TemplateField HeaderText="User" SortExpression="User">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("User") %>'></asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator00" runat="server" ControlToValidate="TextBox1" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                        </strong>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("User") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </strong>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Password" SortExpression="Password">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Não é uma Palavra-Passe válida!" ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
                        </strong>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Active" SortExpression="Active">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Active") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                        </asp:DropDownList>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="DropDownList1" ForeColor="Red" ValidationExpression="^[S,N]">S ou N</asp:RegularExpressionValidator>
                        </strong>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Active") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Admin" SortExpression="Admin">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("Admin") %>'>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>S</asp:ListItem>
                            <asp:ListItem>N</asp:ListItem>
                        </asp:DropDownList>
                        <strong>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="DropDownList2" ForeColor="Red" ValidationExpression="^[S,N]">S ou N</asp:RegularExpressionValidator>
                        </strong>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Admin") %>'></asp:Label>
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
            <asp:SqlDataSource ID="SqlDataSourceVerUsers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([User], [Email], [Password], [Active], [Admin]) VALUES (@User, @Email, @Password, @Active, @Admin)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [User] = @User, [Email] = @Email, [Password] = @Password, [Active] = @Active, [Admin] = @Admin WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="User" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Active" Type="String" />
                    <asp:Parameter Name="Admin" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="User" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Active" Type="String" />
                    <asp:Parameter Name="Admin" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
    </p>
        <div align="center">
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceDadosUsers" ForeColor="Black" Height="247px" Width="420px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2" GridLines="Both" HorizontalAlign="Center">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                User:
                <asp:TextBox ID="UserTextBox" runat="server" Text='<%# Bind("User") %>' />
                &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ControlToValidate="UserTextBox" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                </strong>
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Não é um Email válido!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </strong>
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Não é uma Palavra-Passe válida!" ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20})"></asp:RegularExpressionValidator>
                </strong>
                <br />
                Active:
                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Active") %>'>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>N</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="DropDownList1" ForeColor="Red" ValidationExpression="^[S,N]">S ou N</asp:RegularExpressionValidator>
                </strong>
                <br />
                Admin:
                <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("Admin") %>'>
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>S</asp:ListItem>
                    <asp:ListItem>N</asp:ListItem>
                </asp:DropDownList>
                &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Obrigatório" ForeColor="Red" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="DropDownList2" ForeColor="Red" ValidationExpression="^[S,N]">S ou N</asp:RegularExpressionValidator>
                </strong>
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                User:
                <asp:TextBox ID="UserTextBox" runat="server" Text='<%# Bind("User") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Password:
                <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Active:
                <asp:TextBox ID="ActiveTextBox" runat="server" Text='<%# Bind("Active") %>' />
                <br />
                Admin:
                <asp:TextBox ID="AdminTextBox" runat="server" Text='<%# Bind("Admin") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Inserir" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                <strong>Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                User:
                <asp:Label ID="UserLabel" runat="server" Text='<%# Bind("User") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Active:
                <asp:Label ID="ActiveLabel" runat="server" Text='<%# Bind("Active") %>' />
                <br />
                Admin:
                <asp:Label ID="AdminLabel" runat="server" Text='<%# Bind("Admin") %>' />
                <br />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Novo" />
                </strong>
            </ItemTemplate>
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSourceDadosUsers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringRegisto %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([User], [Email], [Password], [Active], [Admin]) VALUES (@User, @Email, @Password, @Active, @Admin)" SelectCommand="SELECT * FROM [Users] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Users] SET [User] = @User, [Email] = @Email, [Password] = @Password, [Active] = @Active, [Admin] = @Admin WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="User" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Active" Type="String" />
                    <asp:Parameter Name="Admin" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="User" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Active" Type="String" />
                    <asp:Parameter Name="Admin" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
    </p>
    
    <p class="auto-style3">
        &nbsp;</p>
</asp:Content>

