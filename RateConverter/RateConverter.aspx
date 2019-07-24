<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RateConverter.aspx.cs" Inherits="RateConverter.RateConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center;font-size:150%">
    <h1>Forex Rate Converter</h1>
    <form id="form1" runat="server">
        <div style="border:1px solid black">
            Amount in INR(Rupees)<br />
            <asp:TextBox ID="inr" runat="server"></asp:TextBox><br />
            <asp:Button ID="convert" runat="server" Text="USD" OnClick="convert_Click" /><br />
            <asp:Label ID="answer" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
