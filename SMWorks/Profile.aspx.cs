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
    public partial class Profile : System.Web.UI.Page
    {
        private int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Users";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                id = reader.GetInt32(0);
                lblUsername.Text = reader["username"].ToString();
                lblEmail.Text = reader["email"].ToString();
                lblUserType.Text = reader["usertype"].ToString();
            }
            con.Close();
        }

        protected string edit()
        {
            string htmlstr = "<a href='EditProfile.aspx?id=" + id +"'>Edit</a>";
            return htmlstr;
        }
    }
}