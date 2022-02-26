<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Grocery_Shopping_Website.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="Login.css" />
    <title></title>
   <%-- <style type="text/css">
        .style1
        {
            text-align: center;
            display: inline;
        }
        .style2
        {
            text-align: left;
            display: block;
        }
    </style>--%>
</head>

<body style="font-weight: 700; text-align: justify;">
    <form id="form1" runat="server">
    <div id="container">
<h1>Login Page</h1>
    <div class="style1">
    <div class="style2">
    
        <asp:Label ID="username" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUser" runat="server" style="margin-left: 18px"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtUser" ErrorMessage="username cannot be empty"></asp:RequiredFieldValidator>
    
    </div>
    <p class="style2">
        <asp:Label ID="password" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" ontextchanged="TextBox1_TextChanged" 
            style="margin-left: 23px; margin-top: 4px; margin-bottom: 0px" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtPass" ErrorMessage="password cannot be empty"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p class="style2">
        <asp:Button ID="btnLogin" runat="server" Text="Login" 
            onclick="btnLogin_Click" />
            
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdminLogin.aspx">Admin Login</asp:HyperLink>
            
    </p>
    </div>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
