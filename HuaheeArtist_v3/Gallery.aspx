<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Assignment.Gallery" %>

<!DOCTYPE html>
<link href="gallery.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #993399;
            background-size: cover;
        }
        .auto-style2 {
            margin-bottom: 17px;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            background-color: #FFFFFF;
             padding: 5px;
        }
        .auto-style4:hover {
          background-color:gainsboro;
        }
        .auto-style5 {
            text-align: center;
            background-color: #FFFFFF;
            Font-Size:22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div class ="grid">
         <div class="content">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2" DataKeyField="ProductId" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="5" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CellSpacing="50">
                <ItemTemplate>
                    <table class="auto-style1">
                       
                        
                        <tr>
                            <td class="auto-style5" >
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("CoverPhoto") %>' Width="200px" />
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style5">
                           
                                <asp:Label ID="Label2" runat="server"  Font-Bold="True" Font-Size="26px" Text='<%# Limit(Eval("Name"),13) %>' > ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style5">Price:<asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>' ></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category") %>' Font-Size="20px"></asp:Label>
                            </td>
                        </tr>                        
                        <tr>
                            <td class="auto-style5">
                                <br />
                                <asp:Button ID="btnItemDetail" runat="server" CommandArgument='<%# Eval("ProductId") %>' CommandName="ViewDetails" CssClass="auto-style4" OnClick="btnItemDetail_Click" Text="View Detail" />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                    <div class="auto-style3">
                        <br />
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <br />




        </div>
      </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
    </form>
</body>
</html>
