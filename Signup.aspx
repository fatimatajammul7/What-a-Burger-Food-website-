<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WhataBurger.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>SIGN UP</title>
    <link rel="stylesheet" href="StyleSheet1.css"/>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="header">
        <div class="Left">
            <img src="Images/orange_red_flat_original_burger_delicious_logo-removebg-preview (1).png" style="  float:left;  width: 98px; height: 93px; padding: 7px; margin-left: 19px; margin-right: 7px; margin-top: 7px; margin-bottom: 7px; display: inline;" /></div>
        
        
    </div>

    <div class="auto-style1" style="font-family: 'Flama Condensed Medium', sans-serif; background-color: #f5ebdc;">
        <h1 style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; color: #f5ebdc;  padding-left:10px; background-color: #502314; height: 100px; text-align:center; padding-top: 25px; margin-left:0px ">SIGN UP</h1>
        <div style="background-color: #f5ebdc">
            <h4 style="font-size: 25px; font-family: 'Flama Condensed Medium', sans-serif; color: #000000; font-weight: 500; text-transform: uppercase; font-style: normal; margin-left: 160px;"><b><strong style="text-transform: none; font-family: 'Flama Condensed Medium', sans-serif; font-size: 30px; font-weight: 500;  font-style: normal;">ABOUT YOU</strong></b></h4>
          


        <div class = "AboutYou"></div>
            <asp:Label ID="Label1" runat="server" Text="* Name:" Font-Names="paflama condensed medium, sans-serif" style="font-weight: 700; display:block; margin-left:160px;margin-bottom:3px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="530px" BorderWidth="1px" Height="30px" style="display:block; margin-left:160px"></asp:TextBox>
          
            <asp:Label ID="Label2" runat="server" Text="Gender: " Font-Names="flama condensed medium, sans-serif" style="font-weight: 700; display:block; margin-left:160px ;margin-top:25px; margin-bottom:3px"></asp:Label>
            <asp:DropDownList ID="Gender" runat="server" Font-Names="flama condensed medium, sans-serif" Height="30px" style="text-align: left; display:block; margin-left:160px" Width="230px">
                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text="Female"
                Value="F"></asp:ListItem>
                <asp:ListItem Text="Male"
                Value="M"></asp:ListItem>
                <asp:ListItem Text="Other"
                Value="o"></asp:ListItem>

            </asp:DropDownList>

            <asp:Label ID="Label4" runat="server" Text="* Contact: " style="font-weight: 700; display:block; margin-left:160px;margin-top:25px; margin-bottom:3px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" onfocus="if (this.value == ' Digits only') this.value = '';" onblur="if (this.value == '') this.value = ' Digits only';" value=" Digits only" BorderWidth="1px" Height="30px" Width="530px" ForeColor="Black" style="display:block; margin-left:160px"></asp:TextBox>
            

        </div>


        <div class="Delivery">
            <h4 style="font-family: 'Flama Condensed Medium', sans-serif; display:block; margin-left:160px; font-size: 30px; font-weight: 500; font-style: normal; text-transform: uppercase;">Delivery Address</h4>

            <asp:Label ID="Label6" runat="server" Text="* Address: " style="font-weight: 700;display:block; margin-left:160px;margin-bottom:3px;margin-top:25px;"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" BorderWidth="1px" Height="30px" Width="530px" style="display:block; margin-left:160px"></asp:TextBox>

          </div>

        <div class="CreateSignIn">
            <h4 style="font-family: 'Flama Condensed Medium', sans-serif; font-size: 30px; font-weight: 500; display:block; margin-left:160px; font-style: normal; text-transform: uppercase;">Create Your Sign In</h4>

            <asp:Label ID="Label8" runat="server" Text="* Email: " style="font-weight: 700;display:block; margin-left:160px;margin-bottom:3px;margin-top:25px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" onfocus="if (this.value == ' name@mail.com') this.value = '';" onblur="if (this.value == '') this.value = ' name@mail.com';" value=" name@mail.com"
                Text=" name@mail.com" BorderWidth="1px" Height="30px" Width="530px" Font-Size="10pt" ForeColor="Black" style="display:block; margin-left:160px"></asp:TextBox>
            
            <asp:Label ID="Label11" runat="server" Text="* Username: " style="font-weight: 700;display:block; margin-left:160px;margin-bottom:3px;margin-top:25px"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" BorderWidth="1px" Height="30px" Width="530px" style="display:block; margin-left:160px"></asp:TextBox>
            
            <asp:Label ID="Label9" runat="server" Text="* Password: " style="font-weight: 700;display:block; margin-left:160px;margin-bottom:3px;margin-top:25px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" BorderWidth="1px" Height="30px" Width="530px" style="display:block; margin-left:160px"></asp:TextBox>

            <asp:Label ID="Label10" runat="server" Text="* Confirm Password: " style="font-weight: 700;display:block; margin-left:160px;margin-bottom:3px;margin-top:25px"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" BorderWidth="1px" Height="30px" Width="530px" style="display:block; margin-left:160px"></asp:TextBox>
           
            <asp:Label ID="ErrorSignLabel3" runat="server" Text="" style="font-weight: 700;display:block; margin-left:160px;margin-bottom:3px;margin-top:25px"></asp:Label>
    <br />
            <asp:Button ID="Button1" runat="server" Text="CREATE ACCOUNT" Font-Bold="True" Font-Size="Medium" Height="50px" style="font-weight: 700; display:block; margin-right:887px;margin-bottom:3px;margin-top:25px" Width="199px" OnClick="Button1_Click2" />
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
