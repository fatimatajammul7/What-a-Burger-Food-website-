<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalOrder.aspx.cs" Inherits="WhataBurger.FinalOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="FHead1" runat="server">
    <title>My Cart</title>
     <link rel="stylesheet" href="StyleSheet1.css" />
</head>
<body>
    <form id="Fform1" runat="server">
    <div class="header">
            <div class="Left">
                <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="float: left; width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" />
            </div>
            <div class="Mid">
                <div class="nav">
                    <a href="#" target="_blank">Home</a>
                    <a href="#" target="_blank">Menu</a>
                    <a href="#" target="_blank">My Account</a>
                    <a href="#" target="_blank">Support</a>

                </div>
            </div>
            <div class="Right">
                <asp:Button ID="FButton1" runat="server" Text="Log Out" BackColor="#502314" BorderStyle="None" CssClass="Right" Font-Bold="True" Font-Names="Arial" ForeColor="#F5EBDC" Height="36px" Width="101px" OnClick="Button1_Click" />
            </div>
        </div>

      <h1> Order Confirmed</h1>

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

