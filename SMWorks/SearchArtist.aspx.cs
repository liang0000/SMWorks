using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SMWorks
{
    public partial class SearchArtist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                Panel1.Visible = false;
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        public string fetchArtist()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Users where username Like'%" + txtArtName.Text + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string artName = reader.GetString(1);
                string artEmail = reader.GetString(2);
                htmlStr += "<tr><td>" + artName + "</td><td>" + artEmail + "</td></tr>";
            }
            con.Close();
            return htmlStr;
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtArtName.Text = string.Empty;
        }
    }
}