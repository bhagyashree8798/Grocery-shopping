<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Grocery_shopping.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
        background-image: url('iStock-1004112892-online-grocery-shopping.jpg');
        
}
        .auto-style4 {
            margin-left: 520px;
        }
        .auto-style5 {
            margin-left: 30px;
        }
        .auto-style6 {
            margin-left: 41px;
        }
        .auto-style7 {
            margin-left: 124px;
            background-color: #99FFCC;
            font-weight: bold;
        }
        .auto-style8 {
            font-size: 25pt;
            color: #006600;
            margin-left: 520px;
        }
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            margin-left: 560px;
        }
    </style>

    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="Login.css">
    
</head>
<body>
    <form id="form1" runat="server">
        
        
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p class="auto-style8">
            <strong>Online Grocery Shopping</strong></p>
        <p>
            &nbsp;</p>
        <div class="auto-style4">
            <span class="auto-style9"><strong>Username :-</strong></span><asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" Height="19px" Width="230px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter username"></asp:RequiredFieldValidator>
            </strong>
            <br />
            <br />
            <span class="auto-style9"><strong>Password :-</strong></span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style6" Height="21px" Width="225px" TextMode="Password"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter password"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid password" ValidationExpression="^[A-Za-z0-9]{5,15}$" ForeColor="#FFFFCC"></asp:RegularExpressionValidator>
            </strong>
            <br />
            <br />
            <br />
            <strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="33px" Text="Login" Width="96px" OnClick="Button1_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
            <br />
            <br />
        </div>
        
        <div class="auto-style10">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Registration.aspx" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0000CC">New User ?   Sign In</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </strong>
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" Font-Bold="True" Height="25px" PostBackUrl="~/Admin.aspx" Text="Admin login" Width="104px" />
        </div>
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </form>
    
    </body>
</html>