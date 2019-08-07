<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookiesDemo.aspx.cs" Inherits="Cookiesdemo.CookiesDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cookies Demo</title>
</head>
<body>
    <h2>List Available Cookies</h2>
    <form id="form1" runat="server">
        <div>
            Cookies Name:
            <asp:TextBox ID="Cname" runat="server"></asp:TextBox><br />
            Cookie Value:
            <asp:TextBox ID="Cvalue" runat="server"></asp:TextBox><br />
            <asp:CheckBox ID="chkDurable" runat="server" Text="Durable Cookie" /><br />
            <asp:Button ID="btnAdd" runat="server" Text="Add Cookie" OnClick="btnAdd_Click" /><br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">List Available Cookies</asp:LinkButton>
        </div>
    </form>
</body>
</html>
