<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Grocery_Shopping_Website.AdminPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: 16pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1"><strong>Admin Page<br />
        <br />
        Delete Users</strong></span><br />
    
        <asp:GridView ID="userdetails" runat="server"
            AutoGenerateColumns="False" DataKeyNames="userid" 
            onselectedindexchanged="userdetails_SelectedIndexChanged" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Width="1338px" >
            
            <AlternatingRowStyle BackColor="White" />
            
            <Columns>
                <asp:BoundField DataField="userid" HeaderText="userid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="userid" />
                <asp:BoundField DataField="username" HeaderText="username" 
                    SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
                <asp:BoundField DataField="emailid" HeaderText="emailid" 
                    SortExpression="emailid" />
                <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
            </Columns>
            
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:userdetailsConnectionString %>" 
            DeleteCommand="DELETE FROM userlogin WHERE userid = ?userid AND username = ?username AND password = ?password AND emailid = ?emailid AND mobno = ?mobno" 
            InsertCommand="INSERT INTO userlogin] (userid, username, password, emailid, mobno) VALUES (?userid, ?username, ?password, ?emailid, ?mobno)" 
            OldValuesParameterFormatString="original_{0}" 
            ProviderName="<%$ ConnectionStrings:userdetailsConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM userlogin" 
            UpdateCommand="UPDATE userlogin SET username = ?username, password = ?password, emailid = ?emailid, mobno = ?mobno WHERE userid = ?userid AND username = ?username AND password = ?password AND emailid = ?emailid AND mobno = ?mobno">
            <DeleteParameters>
                <asp:Parameter Name="original_userid" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_emailid" Type="String" />
                <asp:Parameter Name="original_mobno" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userid" Type="Int32" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="mobno" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="mobno" Type="Int32" />
                <asp:Parameter Name="original_userid" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
                <asp:Parameter Name="original_emailid" Type="String" />
                <asp:Parameter Name="original_mobno" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        Enter user to be deleted:</div>
    <p>
        <asp:TextBox ID="UserDelete" runat="server" 
            ontextchanged="UserDelete_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
            onclick="Button1_Click" Text="Delete" />
    </p>
    <p>
        <asp:Label ID="lblUserDelete" runat="server"></asp:Label>
    </p>
    
    </form>
</body>
</html>
