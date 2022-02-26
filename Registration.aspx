<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Grocery_Shopping_Website.Registration" EnableSessionState="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="Stylesheet" type="text/css" href="Styles/Registration.css" />

    <title></title>
    <%--<style type="text/css">
        .style1
        {
            font-family: "Times New Roman", Times, serif;
            text-align: justify;
            }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <%--<div class="page-container">--%>
    <div class="style1">
    
        <h1>
            Registration</h1>
            <div class="registration">
        <p>
            <asp:Label ID="lblName" runat="server" Text="Name&nbsp;&nbsp;"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" AutoCompleteType="DisplayName"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="txtName"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="name can't be blank" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </p>
         
    
   
    <p>
        <asp:Label ID="lblEmail" runat="server" Text="Email-Id&nbsp;&nbsp;"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" AutoCompleteType="Email" 
            TextMode="Email"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtEmail" ErrorMessage="Invalid Email" 
            Display="Dynamic" 
            ValidationExpression="^[a-z0-9](\.?[a-z0-9]){5,}@gmail\.com$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtEmail" ErrorMessage="Email can't be blank"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblPass" runat="server" Text="Password&nbsp;&nbsp;"></asp:Label>
        <asp:TextBox ID="txtPass" runat="server" ontextchanged="TextBox5_TextChanged" 
            TextMode="Password"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="Invalid password" ControlToValidate="txtPass" 
            ValidationExpression="^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%&amp;*-]).{8,}$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="password can't be blank" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblMobno" runat="server" Text="Mobile No&nbsp;&nbsp;"></asp:Label>
            <asp:TextBox ID="txtMobno" runat="server" 
            ontextchanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Invalid mobile number" ControlToValidate="txtMobno" 
            ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="mobile no can't be blank" ControlToValidate="txtMobno"></asp:RequiredFieldValidator>
        </p>
    <p>
        &nbsp;</p>
    <asp:Button ID="btnRegister" runat="server" Text="Register" 
        onclick="btnRegister_Click" CausesValidation="False" />
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Label ID="Label2" runat="server"></asp:Label>
    </p>
    </div>
    </div>
    </form>&nbsp;
</body>
</html>
