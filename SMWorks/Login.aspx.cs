using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace SMWorks
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbnFgtPss_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = string.Empty;
            txtPassword.Text = string.Empty;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Users where username = '" + txtUsername.Text + "' and password = '"
                + txtPassword.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select usertype from Users where username = '" + txtUsername.Text + "'", con);
                string uType = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                Session["uType"] = uType;

                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Login Failed!";
            }
            con.Close();
        }

        protected void lbnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void lbnFgtPss_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}