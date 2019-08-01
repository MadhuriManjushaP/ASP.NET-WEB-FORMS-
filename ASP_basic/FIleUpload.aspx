<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FIleUpload.aspx.cs" Inherits="ASP_basic.FIleUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Upload</title>
</head>
<body>
    <form id="form1" runat="server" style="font-size:150%;text-align:center">
        <div>
            Upload File
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
