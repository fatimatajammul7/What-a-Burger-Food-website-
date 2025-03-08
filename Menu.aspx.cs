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
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); 

            GridView1.AutoGenerateColumns = false;

            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select * from Menu", con);  //instantiate SQL command 
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
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

        protected void AddButton2_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open();
            SqlCommand cmd;

            try{
            
                string currentUser = "";
                currentUser = Request.QueryString["currUser"];
                SqlCommand cmdID = new SqlCommand("getID",con);
                cmdID.CommandType = CommandType.StoredProcedure;
                cmdID.Parameters.AddWithValue("@username", currentUser);
                SqlParameter p = new SqlParameter();
                p.ParameterName = "@id";
                p.SqlDbType = SqlDbType.Int;
                p.Direction = ParameterDirection.Output;
                cmdID.Parameters.Add(p);
                cmdID.ExecuteNonQuery();
                int id = (int)cmdID.Parameters["@id"].Value;

                cmd = new SqlCommand("Add_Cart_Items", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@memberID", id);
                cmd.Parameters.AddWithValue("@itemID", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@SpecialInstructions", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                Response.Redirect("Menu.aspx?currUser=" + currentUser);


                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string currentUser = "";
            currentUser = Request.QueryString["currUser"]; ;
            Response.Redirect("EditProfile.aspx?currUser=" + currentUser);
        }

        protected void CartButton22_Click(object sender, EventArgs e)
        {
            string currentUser = "";
            currentUser = Request.QueryString["currUser"];
            Response.Redirect("Cart.aspx?currUser=" + currentUser);
        }

    }
}