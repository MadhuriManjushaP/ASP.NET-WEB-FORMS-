<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TripCostCal.aspx.cs" Inherits="TripCostCal.TripCostCal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-size:150%;text-align:center">
    <h1>Trip cost calculator</h1>
    <form id="form1" runat="server" style="border:1px solid black;margin:auto">
        <div>
            Number of kilometers <br />
            <asp:TextBox ID="kilo" runat="server"></asp:TextBox><br />
            Number of litres per km<br />
            <asp:TextBox ID="litre" runat="server"></asp:TextBox><br />
            Select fuel option<br />
            <asp:DropDownList ID="list" runat="server">
              <asp:ListItem Text="Diesel" Value="70"></asp:ListItem> 
                <asp:ListItem Text="Petrol" Value="80"></asp:ListItem>
            
            </asp:DropDownList><br />
            
            <asp:Button ID="calculate" runat="server" Text="calculate" Font-Size="Large" OnClick="calculate_Click" /><br />

            <asp:Label ID="answer" runat="server" ></asp:Label>

        </div>
    </form>
</body>
</body>
</html>
