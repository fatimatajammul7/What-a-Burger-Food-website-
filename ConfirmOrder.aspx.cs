using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WhataBurger
{
    public partial class ConfirmOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection

            GridViewCart.AutoGenerateColumns = false;

            SqlCommand cmd;
            try
            {
                string currentUser = "";
                currentUser = Request.QueryString["currUser"];
                SqlCommand cmdID = new SqlCommand("getID", con);
                cmdID.CommandType = CommandType.StoredProcedure;
                cmdID.Parameters.AddWithValue("@username", currentUser);
                SqlParameter p = new SqlParameter();
                p.ParameterName = "@id";
                p.SqlDbType = SqlDbType.Int;
                p.Direction = ParameterDirection.Output;
                cmdID.Parameters.Add(p);
                cmdID.ExecuteNonQuery();
                int id = (int)cmdID.Parameters["@id"].Value;
                cmd = new SqlCommand("Select * from Order_Items JOIN Orders on Orders.OrderID = Order_Items.OrderID where Orders.memberID = " + id, con);  //instantiate SQL command 
                SqlDataReader dr = cmd.ExecuteReader();
                GridViewCart.DataSource = dr;
                GridViewCart.DataBind();
                con.Close();
            }
            catch (SqlException ex)
            {

                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void AddButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Billing.aspx");
        }

       

        
    }
}