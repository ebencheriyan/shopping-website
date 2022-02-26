<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Milk1.aspx.cs" Inherits="Grocery_Shopping_Website.Milk1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="Milk.css">
<h1>Product Details</h1>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container">
      <div class="right">
    <h1>Milk</h1>
    <p class="product">Product Desc:Milk<br /></p>
    <p class="price">Price:20Rs<br /></p>
     <p class="quantity">Quantity:<asp:TextBox ID="txtMilk" runat="server"></asp:TextBox></p>
    <asp:Button ID="addtocart" runat="server" 
        Text="add to cart" onclick="addtocart_Click" />
          <asp:HyperLink ID="back_home" runat="server" NavigateUrl="~/homepage.html">Go to Home page</asp:HyperLink>
        
    </p>
    
    </div>
    <div class="right">
    
        <img src="images/milk-pack-milk-carton-vector-icon-milk-pack-milk-carton-vector-icon-129505565.jpg">
        </div>
  
    
    
    
    </div>
    </form>
</body>
</html>
