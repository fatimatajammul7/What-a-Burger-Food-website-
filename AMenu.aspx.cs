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
    public partial class AMenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection

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
                //(String)Session["id"]
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void AdminMenuButton2_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Delete_Item_Menu", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@itemID", TextBox4.Text.Trim());
                SqlParameter p = new SqlParameter();
                p.ParameterName = "@error";
                p.SqlDbType = SqlDbType.NVarChar;
                p.Size = 50;
                p.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(p);
                cmd.ExecuteNonQuery();
                string error = (string)cmd.Parameters["@error"].Value;

                if (error == "Success")
                {
                    Response.Redirect("AMenu.aspx");
                }
                else
                {
                    Label1.Text = error;
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void AdminMenuButton3_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Add_Item_Menu", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@itemP", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@desc", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                Response.Redirect("AMenu.aspx");
                
               
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }
    }
}