<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WhataBurger.EditProfile" %>

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

    <div class="ProfileBody">
        <h3>Profile</h3>
        <div class="ProfileItem">
            <div class="ChangePassword">
                <h4>Old Password</h4>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <h4>New Password</h4>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="ProfButton2" runat="server" Text="Change Password" OnClick="ProfButton2_Click"  />
                <br /><br />
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <asp:Button ID="ProfButton3" runat="server" Text="Edit Name" OnClick="ProfButton3_Click" />
            <br /><br />
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" Text="Change Email ID" OnClick="Button4_Click"/>
            <br /><br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:Button ID="Button5" runat="server" Text="Edit Address" OnClick="Button5_Click" />
            <br /><br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Button ID="Button6" runat="server" Text="Edit Phone Number" OnClick="Button6_Click" />
            <br /><br />
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
