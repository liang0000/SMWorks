using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SMWorks
{
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt16(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Users where id= '" + id + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtUsername.Text = dt.Rows[0][1].ToString();
                txtEmail.Text = dt.Rows[0][2].ToString();
                txtPassword.Text = dt.Rows[0][3].ToString();
            }
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Users set username ='" + txtUsername.Text + "'," + "email ='" + txtEmail.Text + 
                "',password ='" + txtPassword.Text + "' where id ='" + id + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Profile.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Users where id ='" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}