<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Huahee Artist</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/addProduct.css" rel="stylesheet" />
    
     <script type ="text/javascript">
        function UploadFile(fileUpload) {
            if (fileUpload.value != '') {
                document.getElementById("<%=btnUpload2.ClientID %>").click();
                document.getElementById("<%=btnUpload.ClientID %>").click();
                document.getElementById("<%=btnUpload3.ClientID %>").click();
                document.getElementById("<%=btnUpload4.ClientID %>").click();
                document.getElementById("<%=btnUpload5.ClientID %>").click();
            }
        }

     </script>


    <style type="text/css">
        .auto-style1 {
            margin-top: 0;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class ="grid">
   
            <div class="header">header</div>
            <div class="sidebar">

             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Image ID="pictureBox1" runat="server" Height="300px" Width="300px" ViewStateMode="Enabled" CssClass="auto-style1" />
                <br /> <br />
              &nbsp;&nbsp;&nbsp;&nbsp;  
                <asp:Image ID="pictureBox2" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled" />
                <asp:Image ID="pictureBox3" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled"/>
                <asp:Image ID="pictureBox4" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled"/>
                 <asp:Image ID="pictureBox5" runat="server" Height="100px" Width="100px" ViewStateMode="Enabled" />
                 <asp:label id="Label1" runat="server"/>


                <br />
                <br />
                <div class="col-md-3">
                    <asp:Label ID="lblCover" runat="server" Text="Cover Photo*"></asp:Label>
                   <asp:FileUpload ID="img01" runat="server" AllowMultiple="True"  CssClass="form-control" Width="256px"  ViewStateMode="Enabled"/>
                    <asp:Button ID="btnUpload2" runat="server" Text="Upload" OnClick ="Upload" style="display: none" />
                        <br />

                 
   

                    <asp:Label ID="lblOpt" runat="server" Text="Optional"></asp:Label>
                    
                    <asp:FileUpload ID="img02" runat="server"  CssClass="form-control"  Width="256px" ViewStateMode="Enabled"></asp:FileUpload>
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" cssClass ="box"  style="display: none" />
                   
                    <asp:FileUpload ID="img03" runat="server"   CssClass="form-control"  Width="256px" ViewStateMode="Enabled"/>
                    <asp:Button ID="btnUpload3" runat="server" Text="Upload" OnClick="Upload" cssClass ="box"  style="display: none" />
                
                    <asp:FileUpload ID="img04" runat="server" CssClass="form-control" Width="256px" ViewStateMode="Enabled"/>
                   <asp:Button ID="btnUpload4" runat="server" Text="Upload" OnClick="Upload" cssClass ="box"  style="display: none" />
                 
                    <asp:FileUpload ID="img05" runat="server" CssClass="form-control"  Width="256px" ViewStateMode="Enabled"/>
                    <asp:Button ID="btnUpload5" runat="server" Text="Upload" OnClick="Upload" cssClass ="box"  style="display: none" />

                   

                  
                    <br />
                    
               </div>
            </div>
            
            <div class="content">
                
              
                         <asp:Label ID="lblName" runat="server"  Text="Name*"></asp:Label>&nbsp;
                 <br />
                <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="210px" ViewStateMode="Enabled"></asp:TextBox>
                <br />

                         <asp:Label ID="lblSize" runat="server"  Text="Size*"></asp:Label>&nbsp;
                 <br />
                <asp:TextBox ID="txtSize" runat="server"  CssClass="textbox"></asp:TextBox>
                 <br />

                         <asp:Label ID="lblPrice" runat="server"  Text="Price*" CssClass="text"></asp:Label>&nbsp;
                 <br />
                <asp:TextBox ID="txtPrice" runat="server"  CssClass="textbox"></asp:TextBox>
                 <br />
                
                         <asp:Label ID="lblDate" runat="server"  Text="Date*"></asp:Label>&nbsp;
                 <br />
                 <div style = "position:relative; bottom:-10px;" >
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                 </div>

                 <br />

                
                         <asp:Label ID="lblCategory" runat="server"  Text="Category*"></asp:Label>&nbsp;
                 <br />
                  <asp:DropDownList ID="ddlCategory" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                  
                <br />
                
                         <asp:Label ID="lblDescription" runat="server"  Text="Description(minimum 20 words)*" Top ="8px"></asp:Label>&nbsp;
                 <br />
                 <asp:TextBox ID="txtDesc" runat="server"  CssClass="textbox" TextMode="MultiLine" Rows ="5" Columns="60" ViewStateMode="Enabled"></asp:TextBox>
                 <br /><br /><br />

                <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" cssClass="box" />
                <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="text-success"></asp:Label>
            </div>
            <div class="footer"> footer</div>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conString %>" SelectCommand="SELECT * FROM [tblImages]"></asp:SqlDataSource>
    </form>
</body>
</html>
