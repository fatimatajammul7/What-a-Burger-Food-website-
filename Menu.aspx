<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WhataBurger.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>What'ABurger - Best Burgers In Town</title>
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
                    <a href="#" target="Menu.aspx">Home</a>
                    <a href="#" target="Menu.aspx">Menu</a>
                    <a href="#" target="Support.aspx">Support</a>
                    <asp:Button ID="Button5" runat="server" Text="Edit Profile" Height="36px" Width="101px" OnClick="Button5_Click" />
                    <asp:Button ID="CartButton22" runat="server" Text="Cart" OnClick="CartButton22_Click" />
           
                </div>
            </div>
            <div class="Right">
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#502314" BorderStyle="None" CssClass="Right" Font-Bold="True" Font-Names="Arial" ForeColor="#F5EBDC" Height="36px" Width="101px" OnClick="Button1_Click" />
            </div>
        </div>

        <div class="MenuBody">
            <h1>Menu</h1>
           
            <asp:GridView ID="GridView1" FieldHeaderStyle-CssClass="fheader" CssClass="auto-style1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style ="margin-left:430px; text-align:center">
                <Columns>
                    <asp:BoundField DataField="ItemID" HeaderText="Item No" ItemStyle-Width="70">
                        <ItemStyle Width="70px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Item Name" ItemStyle-Width="80">
                        <ItemStyle Width="80px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="ItemPrice" HeaderText="Price" ItemStyle-Width="60">
                        <ItemStyle Width="60px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width="150">
                        <ItemStyle Width="150px"></ItemStyle>
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
            <h4>Enter Item Id:</h4>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br /><br />
            <h4>Special Instructions:</h4>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="AddButton2" runat="server" Text="AddToCart" OnClick="AddButton2_Click" />
            <br /><br /><br /><br />
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
