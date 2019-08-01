<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectLang.aspx.cs" Inherits="ASP_basic.SelectLang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Enter Language<br />
        <asp:TextBox ID="txtlang" runat="server"></asp:TextBox>
        <asp:Button ID="btnsave" runat="server" Text="save" OnClick="btnsave_Click" />

        <asp:Label ID="answer" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
