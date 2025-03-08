<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tracking.aspx.cs" Inherits="WhataBurger.Tracking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Order Tracking</title>
    <link rel="stylesheet" href="Tracking.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <div class="header">
            <div class="Left">
                <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="  float:left;  width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" />
            </div>
            <div class="Mid">
                <div class="nav">
                    <a href="Menu.aspx" >Home</a>
                <a href="Menu.aspx" >Menu</a>
                <a href="Profile.aspx" >My Account</a>
                <a href="Support.aspx" >Support</a>
                
                </div>
            </div>
            <div class="Right">
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#502314" BorderStyle="None" CssClass="Right" Font-Bold="True" Font-Names="Arial" ForeColor="#F5EBDC" Height="36px" Width="101px" OnClick="Button1_Click" />
                </div>
            </div>

            <div class="Mid">
                <h1>Track your Order</h1>
                    
                <asp:Label ID="Label1" runat="server" Text="Enter Order# "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" />
                 
                <br /><br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                
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

