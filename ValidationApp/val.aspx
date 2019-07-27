<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="val.aspx.cs" Inherits="ValidationApp.val" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form Validation</title>
    <style>
        body{
            background-color:grey;
            text-align:center;
            font-size:130%;
        }
        #btnRegister{
            background-color:lightpink;
            padding:10px;
            font-size:120%;
        }
        small{
            color:red;
        }
        .star{
            color:red;
        }
        form{
            padding-bottom:5px;
            
            border:1px solid black;
        }
    </style>
</head>
<body>
    <h1>Registration Form</h1>
    <form id="form1" runat="server">
        <div>
            UserName <span class="star">*</span><br />
            <asp:TextBox ID="uname" runat="server"></asp:TextBox><br />
            <small><asp:RequiredFieldValidator 
                ID="RequiredFieldValidator1" 
                runat="server" 
                ControlToValidate="uname"
                ErrorMessage="username required">

            </asp:RequiredFieldValidator></small><br />
            Mobile <span class="star">*</span><br />
            <asp:TextBox ID="mobile" runat="server"></asp:TextBox><br />
            <small style="text-align:center"><asp:RequiredFieldValidator 
                ID="RequiredFieldValidator3" 
                runat="server" 
                ControlToValidate="Mobile"
                ErrorMessage="Mobile required">

            </asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator 
                ID="RegularExpressionValidator2" 
                runat="server" 
                ControlToValidate="mobile"
                ValidationExpression="\d{10}"
                ErrorMessage="Invalid Mobile Number">

            </asp:RegularExpressionValidator></small>
            <br />
            Password <span class="star">*</span><br /> <!--textmode= password -used to display password box-->
            <asp:TextBox ID="Password1" TextMode="Password" runat="server"></asp:TextBox> <br />
            Confirm Password <span class="star">*</span><br />
            <p><asp:TextBox ID="Passwordc" TextMode="Password" runat="server"></asp:TextBox><br />
            <small><asp:CompareValidator ID="CompareValidator1" 
                runat="server" 
                ControlToValidate="Password1"
                ControlToCompare="Passwordc"
                Operator="Equal"
                ErrorMessage="Passwords do not match">
                
            </asp:CompareValidator></small><br /></p>
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />



        </div>
    </form>
</body>
</html>
