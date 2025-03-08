<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="WhataBurger.AdminProfile" %>

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
                <a href="AdminMenu.aspx" >Admin Menu</a>
                <a href="AdminProfile.aspx" >Admin Profile</a>
                <a href="AdminTracking.aspx" >TrackOrder</a>
            </div>
        </div>
        
    </div>

    <div class="ProfileBody" style="text-align:center">
        <h3>Edit Profile</h3>
        <div class="ProfileItem">
            <div class="ChangePassword">
                <h4>Old Password</h4>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <h4>New Password</h4>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="ProfButton2" runat="server" Text="Change Password" OnClick="ProfButton2_Click"  />
                <br /><br />
            </div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br /><br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="ProfButton3" runat="server" Text="Edit Name" OnClick="ProfButton3_Click" />
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

