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
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }
        public string fetchProduct()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Product where productName Like'%" + txtProdName.Text + "%'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int prodId = reader.GetInt32(0);
                string prodName = reader.GetString(1);
                string prodCate = reader.GetString(2);
                decimal prodPrice = reader.GetDecimal(3);
                string prodImage = reader.GetString(4);
                htmlStr += "<tr><td class=text-center>" + prodName + "</td><td class=text-center>" + prodCate + "</td><td class=text-center>" + prodPrice +
                    "</td><td class=text-center> <img src=" + prodImage + "  style=\"width: 50px; height: 50px\" /></td></tr>";
            }
            con.Close();
            return htmlStr;
        }
    }
}