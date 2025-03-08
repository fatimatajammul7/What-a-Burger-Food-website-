# What A Burger - Food Ordering System

"What A Burger" is an online food ordering system for a restaurant. This project is developed using ASP.NET Web Forms with C# as the backend and SQL Server for data storage. The system allows users to browse the menu, place orders, track their order status, and manage their profiles.

## Features
- **User Authentication**: Customers can sign up, log in, and manage their profiles.
- **Admin Panel**: Admins can manage menus, track orders, and oversee customer interactions.
- **Menu Browsing**: Users can view the restaurant’s menu and select items.
- **Cart & Order Management**: Customers can add items to their cart, place orders, and proceed with billing.
- **Order Tracking**: Users can track the status of their orders.
- **Support System**: Customers can contact support for help.

## Technologies Used
- **Frontend**: ASP.NET Web Forms, HTML, CSS, JavaScript
- **Backend**: C# (.NET Framework)
- **Database**: SQL Server

## File Structure
### **ASP.NET Pages**
- `StartPage.aspx`, `StartPage.aspx.cs`, `StartPage.aspx.designer.cs`: Home page of the website.
- `Login.aspx`, `Login.aspx.cs`, `Login.aspx.designer.cs`: User login page.
- `Signup.aspx`, `Signup.aspx.cs`, `Signup.aspx.designer.cs`: User registration page.
- `Menu.aspx`, `Menu.aspx.cs`, `Menu.aspx.designer.cs`: Displays the restaurant menu.
- `Cart.aspx`, `Cart.aspx.cs`, `Cart.aspx.designer.cs`: Shopping cart functionality.
- `Billing.aspx`, `Billing.aspx.cs`, `Billing.aspx.designer.cs`: Payment and order confirmation.
- `ConfirmOrder.aspx`, `ConfirmOrder.aspx.cs`, `ConfirmOrder.aspx.designer.cs`: Final order confirmation.
- `TrackOrder.aspx`, `TrackOrder.aspx.cs`, `TrackOrder.aspx.designer.cs`: Tracks the status of placed orders.
- `EditProfile.aspx`, `EditProfile.aspx.cs`, `EditProfile.aspx.designer.cs`: Allows users to update their profile details.
- `Support.aspx`, `Support.aspx.cs`, `Support.aspx.designer.cs`: Customer support page.

### **Admin Panel Pages**
- `AdminLogin.aspx`, `AdminLogin.aspx.cs`, `AdminLogin.aspx.designer.cs`: Admin login page.
- `AdminMenu.aspx`, `AdminMenu.aspx.cs`, `AdminMenu.aspx.designer.cs`: Admin controls for managing menu items.
- `AdminProfile.aspx`, `AdminProfile.aspx.cs`, `AdminProfile.aspx.designer.cs`: Admin profile management.
- `AdminSignup.aspx`, `AdminSignup.aspx.cs`, `AdminSignup.aspx.designer.cs`: Admin registration page.
- `AdminTracking.aspx`, `AdminTracking.aspx.cs`, `AdminTracking.aspx.designer.cs`: Tracks orders from the admin side.

### **Database Schema**
The database schema is provided in `What a Burger.sql`. It includes tables such as:
- `Users`: Stores user information.
- `Admin`: Stores admin login credentials.
- `Menu`: Stores details of food items.
- `Orders`: Stores order details.
- `OrderTracking`: Keeps track of order statuses.
- `SupportRequests`: Manages customer support queries.

If you encounter any issues or have questions, please feel free to reach out for assistance. Happy coding!
