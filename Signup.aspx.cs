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
    public partial class Signup : System.Web.UI.Page
    {
         //string connString = 
         //   ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Sign_Up", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@username", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@confirmPass", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@phoneNo", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", Gender.Text.Trim());

                SqlParameter p = new SqlParameter();
                p.ParameterName = "@error";
                p.SqlDbType = SqlDbType.NVarChar;
                p.Size = 100;
                p.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(p);
                cmd.ExecuteNonQuery();
                string error = (string)cmd.Parameters["@error"].Value;
                if (error == "Success")
                {
                    string currentUser = TextBox7.Text.Trim();
                    Response.Redirect("Menu.aspx?currUser=" + currentUser);
                }
                else
                {
                    ErrorSignLabel3.Text = error;
                }
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }
    }
}