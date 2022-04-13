<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="Assignment.ViewDetails" %>

<!DOCTYPE html>
<link href="viewDetails.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            margin-left: 50px;
        }
        .auto-style2 {
            padding: 5px;
            margin-top: 0;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div >
         
             <header class ="header">
                 <asp:Label ID="Label1" runat="server" Text="Product Details"></asp:Label>
                 <br />
                  <br />
            

             </header>
       
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand"  class="text-center" CssClass="auto-style2">
                <ItemTemplate>
        <div class ="grid">
             <div class="space"> 
         
         
           
         
        
        </div>
             <div class="sidebar">
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        
                <asp:Image ID="pictureBox1" runat="server" Height="300px" Width="300px" ViewStateMode="Enabled" CssClass="auto-style1" ImageUrl='<%# Eval("CoverPhoto") %>' />
                <br /> <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;  
                <asp:Image ID="pictureBox2" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled" ImageUrl='<%# Eval("Image1") %>' />
                <asp:Image ID="pictureBox3" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled" ImageUrl='<%# Eval("Image2") %>'/>
                <asp:Image ID="pictureBox4" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled" ImageUrl='<%# Eval("Image3") %>'/>
                 <asp:Image ID="pictureBox5" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled" ImageUrl='<%# Eval("image4") %>' />
             </div>
            


             <div class="content" >             
                         &nbsp;
                 <br />
                 <asp:Label ID="Name" runat="server" Text='<%# Eval("Name") %>' cssClass ="box" BorderStyle="None" Font-Size="30px" ToolTip="Name" Width="286px" BorderWidth="300px" Font-Strikeout="False" ></asp:Label>
               
                <br /><br />

                         &nbsp;
                 <br />
                 <asp:Label ID="Price" runat="server" Text='<%# Eval("Price") %>' cssClass ="box" BorderStyle="None" Font-Size="28px" ToolTip="Price" BorderWidth="300px"></asp:Label>
               
                 <br /><br />

                         &nbsp;
                 <br />
                 <asp:Label ID="Label2" runat="server" Text="Size:"  ForeColor="#999999" Font-Size="20px"></asp:Label>
                 <asp:Label ID="Size" runat="server" Text='<%# Eval("Size") %>' cssClass ="box" BorderStyle="None" Font-Size="20px" ToolTip="Size" Width="247px" BorderWidth="300px" ></asp:Label>
                 <br /><br />
                
                         &nbsp;
                 <br />              
                 <asp:Label ID="Label9" runat="server" Text="Date Of Creation:"  ForeColor="#999999" Font-Size="20px"></asp:Label>
                     <asp:Label ID="Date" runat="server" Text='<%# Eval("Date") %>' cssClass ="box" BorderStyle="None" Font-Size="20px" ToolTip="Date Of Creation" Width="251px" BorderWidth="300px"></asp:Label>               
                
                 <br /><br />

                
                         &nbsp;
                 <br />
                 <asp:Label ID="Label10" runat="server" Text="Category:"  ForeColor="#999999" Font-Size="20px"></asp:Label>
                 <asp:Label ID="Category" runat="server" Text='<%# Eval("Category") %>'  cssClass ="box" BorderStyle="None" Font-Size="20px" ToolTip="Category" BorderWidth="300px"></asp:Label>                                   
                <br /><br />
                
                         &nbsp;
                 <br />
                 <asp:Label ID="Label11" runat="server" Text="Description:"  ForeColor="#999999" Font-Size="20px"></asp:Label>
                 <asp:Label ID="Description" runat="server" TextMode="MultiLine" Rows ="5" Columns="60"  cssClass ="box" ViewStateMode="Enabled" Text='<%# Eval("Description") %>' BorderStyle="None" Font-Size="20px" ToolTip="Product Description" BorderWidth="300px"></asp:Label>             
                 <br /><br /><br />
                         
                         <br /><br /><br />
                  <asp:Button ID="Button1" runat="server" Text="Add To Cart" cssClass ="box" Height="40px" Width="116px" OnClick="Button1_Click" CommandName="AddToCart" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" Text="Add To Wish List"  cssClass ="box" Height="40px" Width="116px" OnClick="Button2_Click"/>
                </div>
            <div class="space"> 
         cmd.Parameters.AddWithValue("@sp", sp);
         
           
         
        
        </div>
        </div>
                </ItemTemplate>
            </asp:DataList>
            <br />
          
       
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HuaheeArtistDBConnectionString %>" SelectCommand="SELECT * FROM [product]" OnSelecting="SqlDataSource1_Selecting">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
