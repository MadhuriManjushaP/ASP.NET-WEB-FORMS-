<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="ASP_basic.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center;font-size:200%;">
    <form id="form1" runat="server">
        <div>
            Enter your Name:<br />
            <asp:TextBox ID="name" runat="server"></asp:TextBox><br />
            <asp:Button ID="clickme" runat="server" Text="click me" OnClick="clickme_Click" /><br />
            <asp:Label ID="answer" runat="server" Text=""></asp:Label>       

        </div>
    </form>
</body>
</html>
