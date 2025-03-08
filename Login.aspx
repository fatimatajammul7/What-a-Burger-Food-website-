<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WhataBurger.Login" %>

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
<body>
    <form id="form1" runat="server">
    <div class="header">
        <div class="Left">
            <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="  float:left;  width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" />
        </div>
        <div class="Mid">
            <div class="nav">
                <a href="LogIn.aspx" >Home</a>
                <a href="LogIn.aspx" >Menu</a>
                <a href="LogIn.aspx" >My Account</a>
                <a href="LogIn.aspx" >Support</a>
                
            </div>
        </div>
        <div class="Right">
            <asp:Button ID="Button1" runat="server" Text="SignUp" ForeColor="#F5EBDC" BackColor="#502314" Height="33px" Width="72px" OnClick="Button1_Click" />
        </div>
    </div>

    <div class="Orgbody">
        <div class="Content">
            <h2 style="text-align: center">SignIn Here</h2>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="UserName: " Font-Size="15pt" style="text-align: left; font-weight: 700; "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="238px" style="margin-left: 18px"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Password: " Font-Size="15pt" style="text-align: left; font-weight: 700"></asp:Label>
            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" Height="26px" style="margin-left: 26px" Width="238px"></asp:TextBox>
            <br />
            <asp:Label ID="ErrorLabel3" runat="server" Text=" " Font-Size="15pt" style="text-align: left; font-weight: 700"></asp:Label>            
            <br /><br />
            <asp:Button ID="Button2" runat="server" Text="LogIn" Font-Size="15pt" Height="40px" style="font-weight: 700" Width="325px" OnClick="Button2_Click1" />
            <br /><br />
           <a href="SignUp.aspx"> Register Now </a>
           </div>
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


