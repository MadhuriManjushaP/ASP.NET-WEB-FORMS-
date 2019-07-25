<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeeCalculator.aspx.cs" Inherits="CourseFee.FeeCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CourseFee Calculator</title>
    <style>
        #Calculate_Fee{
            font-size:80%;
            background:pink;
        }
    </style>
</head>
<body style="text-align:center;border:1px solid black;font-size:150%">
    <form id="form1" runat="server">
        <div>
            <h1><u>Course Fee Calculator</u></h1>
           <p> Select Course
            <!--dropdown list begin-->
            <asp:DropDownList ID="Courselist" runat="server">       
                <asp:ListItem Value="100000">BTECH</asp:ListItem>
                <asp:ListItem Value="50000">MTECH</asp:ListItem>
                <asp:ListItem Value="20000">BSc</asp:ListItem>
                <asp:ListItem Value="20000">MSc</asp:ListItem>
            </asp:DropDownList></p>
            <p>Mode of Delivery              <!--radio buttons for online or offline mode selection-->
            <asp:RadioButton ID="Classroom" runat="server" checked="true" GroupName="mode" Text="Classroom" AutoPostBack="true" OnCheckedChanged="Classroom_CheckedChanged"/>
            <asp:RadioButton ID="Online" runat="server" GroupName="mode" Text="Online" AutoPostBack="true" OnCheckedChanged="Online_CheckedChanged" /></p>
            
               <asp:CheckBox ID="hostel" runat="server" Text="Hostel" /> <!--Checkbox for hostel-->
            
               <p><asp:CheckBox ID="Bus" runat="server" Text="College Bus"/></p> <!--Checkbox for College Bus-->
               <asp:Button ID="Calculate_Fee" runat="server" Text="Calculate Fee" OnClick="Calculate_Fee_Click" /> <!--Button for total fee-->
            <p>
                <asp:Label ID="answer" runat="server" Text=""></asp:Label>  <!--output label-->
            </p>
            
        </div>
    </form>
</body>
</html>
