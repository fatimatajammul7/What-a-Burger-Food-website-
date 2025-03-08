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
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void ProfButton2_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {

                string currentUser = "";
                currentUser = Request.QueryString["currUser"];
                cmd = new SqlCommand("update_password", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@newpass", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pass", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@username", currentUser);
                SqlParameter p = new SqlParameter();
                p.ParameterName = "@error";
                p.SqlDbType = SqlDbType.NVarChar;
                p.Size = 50;
                p.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(p);
                cmd.ExecuteNonQuery();
                string error = (string)cmd.Parameters["@error"].Value;
                Label1.Text = error;
                TextBox6.Text = "";
                TextBox1.Text = "";
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void ProfButton3_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {

                string currentUser = "";
                currentUser = Request.QueryString["currUser"];
                cmd = new SqlCommand("update_name", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@username", currentUser);
               
                cmd.ExecuteNonQuery();
                Label1.Text = "Success";
                TextBox2.Text = "";
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {

                string currentUser = "";
                currentUser = Request.QueryString["currUser"];
                cmd = new SqlCommand("update_email", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@username", currentUser);
                SqlParameter p = new SqlParameter();
                p.ParameterName = "@error";
                p.SqlDbType = SqlDbType.NVarChar;
                p.Size = 50;
                p.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(p);
                cmd.ExecuteNonQuery();
                string error = (string)cmd.Parameters["@error"].Value;
                Label1.Text = error;
                TextBox3.Text = "";
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {

                string currentUser = "";
                currentUser = Request.QueryString["currUser"];
                cmd = new SqlCommand("update_Address", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@address", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@username", currentUser);
                cmd.ExecuteNonQuery();
                Label1.Text = "Success";
                TextBox4.Text = "";
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {


                string currentUser = "";
                currentUser = Request.QueryString["currUser"];
                cmd = new SqlCommand("update_phone", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@phone", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@username", currentUser);
                cmd.ExecuteNonQuery();
                Label1.Text = "Success";
                TextBox5.Text = "";
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }


    }
}