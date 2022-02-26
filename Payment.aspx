<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Grocery_Shopping_Website.Payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--<h1>Payment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1>-->
</head>
<body>
    <form id="form1" runat="server">

       <h2> Billing Address</h2>Name<br />
        <br />
        <asp:TextBox ID="txtName" runat="server" Height="25px" ></asp:TextBox>
        <br />
        <br />
        Email<br />
        <br />
        <asp:TextBox ID="txtEmail" runat="server" Height="25px"></asp:TextBox>
        <br />
        <br />
        Address<br />
        <br />
        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
        <br />
        <br />
        City<br />
        <br />
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        <br />
        Zip<br />
        <br />
        <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
        <br />
        <br />
        State<br />
        <br />
        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    <asp:Button ID="btnCheckout" runat="server" onclick="btnCheckout_Click1" 
        Text="Checkout" />
    
    </div>
    </form>
    </form>
</body>
</html>
