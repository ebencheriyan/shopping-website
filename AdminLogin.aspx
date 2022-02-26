<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Grocery_Shopping_Website.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" href="Login.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div id="container">
<h1>Admin Login </h1>
    <div class="style1">
    <div class="style2">
    
        <asp:Label ID="Adminusername" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtAdmin" runat="server" style="margin-left: 18px"></asp:TextBox>
    
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtAdmin" ErrorMessage="username cannot be empty"></asp:RequiredFieldValidator>
    
    </div>
    <p class="style2">
        <asp:Label ID="Adminpassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtAdminpass" runat="server"
            style="margin-left: 23px; margin-top: 4px; margin-bottom: 0px" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtAdminpass" ErrorMessage="password cannot be empty"></asp:RequiredFieldValidator>
    </p>
    <p>
        &nbsp;</p>
    <p class="style2">
       
            
            
        <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click1" 
            Text="Login" />
       
            
            
    </p>
    </div>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
