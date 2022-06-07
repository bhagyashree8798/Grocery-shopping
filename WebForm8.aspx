<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="Online_Grocery_shopping.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style>
    body {
  background-image: url('iStock-1004112892-online-grocery-shopping.jpg');
}
    </style>
    <title>Login page</title>
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css">
</head>

<body>
    
     <div class="center">
         <h2>Online Grocery Shopping</h2>
         <form method="post">
             <div class="txt_field">
                 <input type="text" required>
                 <span></span>
                 <label>Username</label>
             </div>
             <div class="txt_field">
                 <input type="password" required>
                 <span></span>
                 <label>Password</label>
             </div>
             <div class="pass">Forget Password?</div>
             <input type="submit" runat="server" value="Login" PostbackUrl="~/WebForm7.aspx" />

             <div class="signup_link">
              Not a member? <a href="WebForm3.aspx">SignUp</a></>
             </div>

         </form>
     </div>
   
</body>
</html>

</asp:Content>
