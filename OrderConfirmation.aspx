<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="Grocery_Shopping_Website.OrderConfirmation" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="product_name" DataSourceID="SqlDataSource1" Height="213px" 
            Width="1031px">
            <Columns>
                <asp:BoundField DataField="product_name" HeaderText="product_name" 
                    ReadOnly="True" SortExpression="product_name" />
                <asp:BoundField DataField="quantity" HeaderText="quantity" 
                    SortExpression="quantity" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:userdetailsConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:userdetailsConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM userdetails.cart;"></asp:SqlDataSource>

    
        <br />
        Order Successful!</div>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
