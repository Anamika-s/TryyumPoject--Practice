<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GridViewDataBindingDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:practiceConnectionString %>" SelectCommand="SELECT * FROM [Item]" DeleteCommand="DELETE FROM [Item] WHERE [id] = @id" InsertCommand="INSERT INTO [Item] ([name], [qty], [description], [dateOfPurchase], [isAvalaible]) VALUES (@name, @qty, @description, @dateOfPurchase, @isAvalaible)" UpdateCommand="UPDATE [Item] SET [name] = @name, [qty] = @qty, [description] = @description, [dateOfPurchase] = @dateOfPurchase, [isAvalaible] = @isAvalaible WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="qty" Type="Int32" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="dateOfPurchase" Type="DateTime" />
                    <asp:Parameter Name="isAvalaible" Type="Boolean" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="qty" Type="Int32" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="dateOfPurchase" Type="DateTime" />
                    <asp:Parameter Name="isAvalaible" Type="Boolean" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" ShowFooter="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                           <asp:LinkButton Text="Insert" ID="lblInsert" OnClick="lblInsert_Click" runat="server">Insert</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="name" SortExpression="name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                        </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                     </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="qty" SortExpression="qty">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("qty") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("qty") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                         <asp:TextBox ID="txtQty" runat="server" Text='<%# Bind("qty") %>'></asp:TextBox>
                     </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="description" SortExpression="description">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                         <asp:TextBox ID="txtDescription" runat="server" Text='<%# Bind("description") %>'></asp:TextBox>
                     </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="dateOfPurchase" SortExpression="dateOfPurchase">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("dateOfPurchase") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("dateOfPurchase") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                         <asp:TextBox ID="txtdateOfPurchase" runat="server" Text='<%# Bind("dateOfPurchase") %>'></asp:TextBox>
                     </FooterTemplate>
                    

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="isAvalaible" SortExpression="isAvalaible">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("isAvalaible") %>' />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("isAvalaible") %>' Enabled="false" />
                        </ItemTemplate>
                         <FooterTemplate>
                         <asp:CheckBox ID="chkisAvalaible" runat="server" Text='<%# Bind("isAvalaible") %>'></asp:CheckBox>
                     </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
