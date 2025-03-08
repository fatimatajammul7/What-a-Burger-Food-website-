<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WhataBurger.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"
<head id="Head1" runat="server">
    <title>My Cart</title>
     <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
            <div class="Left">
                <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="float: left; width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" />
            </div>
            <div class="Mid">
                <div class="nav">
                    <a href="Menu.aspx">Home</a>
                    <a href="Menu.aspx">Menu</a>
                    <a href="EditProfile.aspx">My Account</a>
                    <a href="Support.aspx">Support</a>

                </div>
            </div>
            <div class="Right">
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#502314" BorderStyle="None" CssClass="Right" Font-Bold="True" Font-Names="Arial" ForeColor="#F5EBDC" Height="36px" Width="101px" OnClick="Button1_Click" />
            </div>
        </div>

        <div class="MenuBody">
            <h1>Cart</h1>
           
            <asp:GridView ID="GridViewCart" FieldHeaderStyle-CssClass="fheader" CssClass="auto-style1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style ="margin-left:430px; text-align:center">
                <Columns>
                    <asp:BoundField DataField="ItemID" HeaderText="Item ID" ItemStyle-Width="70">
                        <ItemStyle Width="70px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" ItemStyle-Width="80">
                        <ItemStyle Width="80px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="SpecialInstructions" HeaderText="SpecialInstructions" ItemStyle-Width="100">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                   

                    </Columns>

                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>

        </div>

        <div class="Addtocart">
            
            <br /><br /><br />
            <asp:Button ID="Button3" runat="server" Text="CONFIRM ORDER" OnClick="AddButton6_Click" />
            <br /><br /><br /><br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>

        <div class="Footer">
            <div class="Text">
                <p>@What'ABurger - All Rights Reserved</p>
            </div>
            <div class="Icons">
                <img src="Images/facebook.png" />
                <img src="Images/instagram.png" />
                <img src="Images/twitter.png" />
                <img src="Images/whatsapp.png" />
            </div>
        </div>
    </form>
</body>
</html>

