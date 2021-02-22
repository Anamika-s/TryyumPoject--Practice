<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMenuItemListAdmin.aspx.cs" Inherits="TruumProject.ShowMenuItemListAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ObjectDataSource1" OnRowDeleting="GridView2_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="DateOfLaunch" HeaderText="DateOfLaunch" SortExpression="DateOfLaunch" />
                    <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:CheckBoxField DataField="FreeDelivery" HeaderText="FreeDelivery" SortExpression="FreeDelivery" />
                    <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" ShowHeader="True" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetMenuItemListAdmin" TypeName="Com.Cognizant.Truyum.Dao.MenuItemDaoCollection"></asp:ObjectDataSource>
            <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
