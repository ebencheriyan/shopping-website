<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rice.aspx.cs" Inherits="Grocery_Shopping_Website.productdetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="Rice.css">
<h1>Product Details</h1>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
      <div class="right">
    <h1>Rice</h1>
    <p class="product">Product Desc:white Rice<br /></p>
    <p class="price">Price:20Rs<br /></p>
    <p class="quantity">Quantity:<asp:TextBox ID="txtRice" runat="server" 
            ontextchanged="txtRice_TextChanged"></asp:TextBox></p>
    <asp:Button ID="addtocart" runat="server" onclick="addtocart_Click" 
        Text="add to cart" />
          <asp:HyperLink ID="back_home" runat="server" NavigateUrl="~/homepage.html">Go to Home page</asp:HyperLink>
        
        
    </p>
    
    </div>
    <div class="right">
    
        <img src="images/rice.jpg">
        </div>
  
    
    </form>
</body>
</html>
