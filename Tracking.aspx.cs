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
    public partial class Tracking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection


            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("get_status", con);
                cmd.CommandType = CommandType.StoredProcedure;
                 cmd.Parameters.AddWithValue("@orderid", TextBox1.Text.Trim());
                SqlParameter p = new SqlParameter();
                p.ParameterName = "@status";
                p.SqlDbType = SqlDbType.NVarChar;
                p.Size = 50;
                p.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(p);
                cmd.ExecuteNonQuery();
                string status = (string)cmd.Parameters["@status"].Value;
                Label2.Text = status;
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
    }
}