<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Online_Grocery_shopping.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        height: 342px;
    }
        .auto-style2 {
            height: 38px;
        }
        .auto-style4 {
        width: 100%;
        height: 342px;
        color: #006600;
        font-size: medium;
    }
    .auto-style5 {
        height: 38px;
        font-size: large;
        width: 560px;
    }
    .auto-style6 {
        height: 34px;
        font-size: large;
        width: 560px;
            text-align: center;
        }
    .auto-style9 {
        width: 560px;
    }
        .auto-style11 {
            height: 45px;
            font-size: large;
            width: 560px;
            color: #000000;
            text-align: center;
        }
        .auto-style12 {
            width: 560px;
            text-align: center;
        height: 52px;
    }
        .auto-style13 {
            width: 560px;
            text-align: center;
            height: 125px;
        }
    .auto-style14 {
        width: 560px;
        text-align: center;
        height: 40px;
    }
    .auto-style15 {
        width: 560px;
        text-align: center;
        height: 27px;
    }
    .auto-style16 {
        width: 560px;
        text-align: center;
        height: 34px;
    }
    .auto-style17 {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="431px" RepeatDirection="Horizontal" Width="866px" CssClass="auto-style9" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3">
        <ItemTemplate>
            <table class="auto-style4" border="1">
                <tr>
                    <td class="auto-style11">
                        Id:-
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("prodID") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        Name:-<asp:Label ID="Label2" runat="server" Text='<%# Eval("prodname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("prodimg") %>' Height="120px" Width="120px"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <span class="auto-style17">Quantity</span>:-
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <span class="auto-style17">Price</span>:-
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("prodprice") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16"><span class="auto-style17">Total:</span>-
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("prodtotal") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("prodID")%>' CommandName="addtocart" Height="36px" OnClick="Button1_Click" Text="Add to cart" Width="85px" BackColor="#66FF66" Font-Bold="True" ForeColor="Black" />
                    </td>
                </tr>
            </table>
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groceryConnectionString2 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>

    
    
    

    
</asp:Content>
