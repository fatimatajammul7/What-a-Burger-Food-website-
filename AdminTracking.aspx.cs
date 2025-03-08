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
    public partial class AdminTracking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            GridViewOrders.AutoGenerateColumns = false;
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select * from Orders", con);  //instantiate SQL command 
                SqlDataReader dr2 = cmd.ExecuteReader();
                GridViewOrders.DataSource = dr2;
                GridViewOrders.DataBind();
                con.Close();
            }
            catch (SqlException ex)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error" + ex.Message.ToString());

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string temp;
            SqlConnection con;
            temp = @"Data Source = DESKTOP-9JPP1RJ;initial Catalog = WhataBurger;integrated security = true";

            con = new SqlConnection(temp);
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("update_status", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@orderid", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@status", DropDownList1.Text.Trim());
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
                    Response.Redirect("AdminTracking.aspx");
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