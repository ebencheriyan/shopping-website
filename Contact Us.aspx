<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="Grocery_Shopping_Website.Contact_Us" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="Contact_us.css">
    <div class="header">
    <h1>Website For Grocery Shopping
        </h1>
        <!--Navigation Links-->

        <nav>
    <ul>
    <li><a href="homepage.html">Home</a></li>
    <li><a href="Login.aspx">Login</a></li>
    <li><a href="Registration.aspx">Register</a></li>
    <li><a href="">About Us</a></li>
    <li><a href="">Contact Us</a></li></ul>
    </nav>
    </div>
    
    
    
</head>
<body>
<form id="form1" runat="server">
<div id="container">

<h2>Contact Us</h2>
<p>
<asp:Label ID="lblUsername" runat="server">Username:</asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />
    <asp:Label ID="lblMessage" runat="server">Message:</asp:Label>
    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
    </p>
    </div>

    </form>
</body>
</html>
