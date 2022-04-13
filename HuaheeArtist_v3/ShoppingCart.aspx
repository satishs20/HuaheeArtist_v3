<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="HuaheeArtist_v3.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CartId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" ShowFooter="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="CartId" HeaderText="CartId" InsertVisible="False" ReadOnly="True" SortExpression="CartId" >
            <ItemStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" >
            <HeaderStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" >
            <HeaderStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" >
            <ItemStyle Width="100px" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HuaheeArtistDBConnectionString %>" DeleteCommand="DELETE FROM [cart] WHERE [CartId] = @CartId" InsertCommand="INSERT INTO [cart] ([Pname], [Quantity], [Price]) VALUES (@Pname, @Quantity, @Price)" SelectCommand="SELECT [CartId], [Pname], [Quantity], [Price] FROM [cart] WHERE ([Cuser] = @Cuser)" UpdateCommand="UPDATE [cart] SET [Pname] = @Pname, [Quantity] = @Quantity, [Price] = @Price WHERE [CartId] = @CartId">
        <DeleteParameters>
            <asp:Parameter Name="CartId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:CookieParameter CookieName="username" Name="Cuser" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="CartId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>
