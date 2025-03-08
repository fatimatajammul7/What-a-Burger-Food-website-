<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMenu.aspx.cs" Inherits="WhataBurger.AdminMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>What'ABurger - Best Burgers In Town</title>
    <link rel="stylesheet" href="StyleSheet1.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="Left">
            <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style =" float:left;  width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" />
        </div>
        <div class="Mid">
            <div class="nav">
                <a href="AdminMenu.aspx" >Admin Menu</a>
                <a href="AdminProfile.aspx" >Admin Profile</a>
                <a href="AdminTracking.aspx" >TrackOrder</a>
                
            </div>
        </div>
       
    </div>

    <div class="AdminMenuBody" style ="text-align:center">
        <h2>Menu</h2>
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
            <br /><br />
                <div class="AdminRemoveItem ">
                    <h3>Remove An Item</h3>   
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:Button ID="AdminMenuButton2" runat="server" Text="Remove Item" OnClick="AdminMenuButton2_Click" />
                </div>
            <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
            <div class="AddRemove">
                <br />
                <h3>Add An Item</h3>
                
                <h4>Product Name:  </h4>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br /><br />
                <h4>Product Description:  </h4>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br /><br />
                <h4>Product Price:  </h4>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="AdminMenuButton3" runat="server" Text="Add Item" OnClick="AdminMenuButton3_Click" />
                <br /><br />
               
            </div>
        </div>
       

    <div class="Footer">
        <div class="Text">
            <p>@What'ABurger - All Rights Reserved</p>
        </div>
        <div class="Icons">
            <img src="Images/facebook.png" />
            <img src="Images/instagram.png"  />
            <img src="Images/twitter.png" />
            <img src="Images/whatsapp.png" />
        </div>
    </div>
    </form>
</body>
</html>
