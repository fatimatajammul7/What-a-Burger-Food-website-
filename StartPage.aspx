<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="WhataBurger.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>What'ABurger - Best Burgers In Town</title>
    <link rel="stylesheet" href="StyleSheet1.css"/>
    <style type="text/css">
        .Right {
            height: 34px;
            width: 1086px;
        }
    </style>
</head>
<body style="background-color: #F5EBDC;">
    <form id="form1" runat="server">
    <div class="header">
        <div class="Left">
            <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="  float:left;  width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline-block;" />
            </div>

        <div class="Mid">
               
            </div>
            
    </div>

        <div class ="SelectInterface" style="text-align:center;display:inline-block; margin:10px;padding:40px; margin-left:270px;margin-top:100px; border:double">
            
            <asp:Button ID="ButtonAdmin" runat="server" Text="Admin" Height="50px" OnClick="ButtonAdmin_Click" Width="350px"/>
            <br />
             <asp:Button ID="ButtonCustomer" runat="server" Text="Customer" Height="50px" OnClick="ButtonCustomer_Click" Width="350px" style="margin-top:20px;"/>

        </div>
    <div class="Footer">
        <div class="Text">
            <p>@What'ABurger - All Rights Reserved</p>
        </div>
        <div class="Icons">
            <img src="Images/facebook.png"  />
            <img src="Images/instagram.png"  />
            <img src="Images/twitter.png" />
            <img src="Images/whatsapp.png" />
        </div>
    </div>
    </form>
</body>
</html>



