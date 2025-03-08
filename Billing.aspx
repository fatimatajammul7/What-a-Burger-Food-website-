<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="WhataBurger.Billing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Billing</title>
    <link rel="stylesheet" href="Billing.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="Left">
            <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="  float:left;  width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" />
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
            <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#502314" BorderStyle="None" CssClass="Right" Font-Bold="True" Font-Names="Arial" ForeColor="#F5EBDC" Height="36px" Width="101px" OnClick="Button1_Click" />
        </div>
    </div>
    <div class ="MainBody">
        <div class ="Content">
            <asp:Label ID="Label1" runat="server" Text="PAYMENT METHOD"></asp:Label>
            <br />
            <div class="RD">
                <asp:RadioButton ID="COD" GroupName="payment" runat="server" />
                <asp:Label ID="Label2" runat="server" Text="Cash On Delivery" ></asp:Label>
                <br />
                <asp:RadioButton ID="Card" GroupName="payment" runat="server" />
                <asp:Label ID="Label3" runat="server" Text="Card "></asp:Label>
            </div>
            <asp:Button ID="Button2" runat="server" Text="PROCEED" OnClick="Button2_Click" />
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
    </form>
</body>
</html>

