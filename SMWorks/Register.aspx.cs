using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace SMWorks
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            ddlUserType.SelectedIndex = 0;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "select count(*) from Users where email ='" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    Response.Write("script type=\"text/javascript\">alert('Email already exist.');</script>");
                }
                else
                {
                    string query1 = "insert into Users(username, email, password, usertype) values (@uname,@email,@pword,@usertype)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@uname", txtUsername.Text);
                    cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@pword", txtPassword.Text);
                    cmd1.Parameters.AddWithValue("@usertype", ddlUserType.SelectedItem.ToString());
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void lbnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}