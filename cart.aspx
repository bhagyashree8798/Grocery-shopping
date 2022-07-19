<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Online_Grocery_shopping.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" EmptyDataText="No perticular product  available in shopping cart" ForeColor="#333333" Height="255px" Width="732px" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="prodID" HeaderText="prodID" SortExpression="prodID" />
            <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
            <asp:BoundField DataField="prodimg" HeaderText="prodimg" SortExpression="prodimg" />
            <asp:BoundField DataField="prodquantity" HeaderText="prodquantity" SortExpression="prodquantity" />
            <asp:BoundField DataField="prodprice" HeaderText="prodprice" SortExpression="prodprice" />
            <asp:BoundField DataField="prodtotal" HeaderText="prodtotal" SortExpression="prodtotal" />
        </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:groceryConnectionString2 %>" SelectCommand="SELECT * FROM [cart]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:groceryConnectionString2 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>

</asp:Content>
