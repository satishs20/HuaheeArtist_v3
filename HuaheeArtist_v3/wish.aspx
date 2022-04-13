<%@ Page Title="" Language="C#" MasterPageFile="~/HeaderAndFooter.Master" AutoEventWireup="true" CodeBehind="wish.aspx.cs" Inherits="HuaheeArtist_v3.wish" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="WishId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
            <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="CoverPhoto" HeaderText="CoverPhoto" SortExpression="CoverPhoto" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HuaheeArtistDBConnectionString %>" DeleteCommand="DELETE FROM [wish] WHERE [WishId] = @WishId" InsertCommand="INSERT INTO [wish] ([Pname], [Size], [Price], [Description], [Category], [Date], [CoverPhoto], [Quantity]) VALUES (@Pname, @Size, @Price, @Description, @Category, @Date, @CoverPhoto, @Quantity)" SelectCommand="SELECT [Pname], [Size], [Price], [Description], [Category], [Date], [CoverPhoto], [Quantity], [WishId] FROM [wish] WHERE ([Wuser] = @Wuser)" UpdateCommand="UPDATE [wish] SET [Pname] = @Pname, [Size] = @Size, [Price] = @Price, [Description] = @Description, [Category] = @Category, [Date] = @Date, [CoverPhoto] = @CoverPhoto, [Quantity] = @Quantity WHERE [WishId] = @WishId">
        <DeleteParameters>
            <asp:Parameter Name="WishId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="CoverPhoto" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:CookieParameter CookieName="username" Name="Wuser" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Pname" Type="String" />
            <asp:Parameter Name="Size" Type="String" />
            <asp:Parameter Name="Price" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="CoverPhoto" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="WishId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
