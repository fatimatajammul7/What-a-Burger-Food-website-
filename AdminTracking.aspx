<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminTracking.aspx.cs" Inherits="WhataBurger.AdminTracking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Order Status</title>
    <link rel="stylesheet" href="Tracking.css"/>
</head>
<body>
    <form id="form1" runat="server">
           <div class="header">
            <div class="Left">
                <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="  float:left;  width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" />
            </div>
            <div class="Mid">
                <div class="nav">
                    <a href="AdminMenu.aspx" >Admin Menu</a>
                    <a href="AdminProfile.aspx" >Admin Profile</a>
                    <a href="AdminTracking.aspx" >TrackOrder</a>
                
                </div>
            </div>
            

            <div class="Mid">
                <h1>Order Status</h1>
                <div class="AdminTrack">
                    <h4>Enter Order Number</h4>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br /><br />
                    <h4>Select the Status</h4>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Order Placed</asp:ListItem>
                        <asp:ListItem>Preparing your Food</asp:ListItem>
                        <asp:ListItem>Picked up by Rider</asp:ListItem>
                        <asp:ListItem>Delivered</asp:ListItem>
                    </asp:DropDownList>
                    
                    <br /><br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>

                 <div class="MenuBody">
            <h1>Orders' List</h1>
           
            
                <asp:GridView ID="GridViewOrders" FieldHeaderStyle-CssClass="fheader" CssClass="auto-style1" 
                    runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                     CellPadding="4" ForeColor="Black" GridLines="Horizontal" style ="text-align:center">

                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="Order No" ItemStyle-Width="70">
                        <ItemStyle Width="70px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="MemberID" HeaderText="Member ID" ItemStyle-Width="70">
                        <ItemStyle Width="70px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="TotalBill" HeaderText="Total" ItemStyle-Width="70">
                        <ItemStyle Width="70px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="DeliveryInstructions" HeaderText="Delivery Instructions" ItemStyle-Width="150">
                        <ItemStyle Width="150px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="status" HeaderText="status" ItemStyle-Width="70">
                        <ItemStyle Width="70px"></ItemStyle>
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
            </div>
            
            


          <div class="Footer">
            <div class="Text">
                <p>@What'ABurger - All Rights Reserved</p>
            </div>
            <div class="Icons">
                <img src="Images/facebook.png" width="55px" height="55px" />
                <img src="Images/instagram.png" width="55px" height="55px" />
                <img src="Images/twitter.png" width="55px" height="55px"/>
                <img src="Images/whatsapp.png" width="55px" height="55px"/>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

