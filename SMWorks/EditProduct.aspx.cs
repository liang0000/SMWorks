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
    public partial class EditProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public static int prodid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            prodid = Convert.ToInt16(Request.QueryString["productid"]);
            if (!IsPostBack)
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from Product where productid= '" + prodid + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                txtProdName.Text = dt.Rows[0][1].ToString();
                ddlProdCate.Text = dt.Rows[0][2].ToString();
                txtProdPrice.Text = dt.Rows[0][3].ToString();
                fuProdImage.ID = dt.Rows[0][4].ToString();
            }
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "update Product set productName ='" + txtProdName.Text + "'," + "productCategory ='" + ddlProdCate.Text +
                "',productPrice ='" + txtProdPrice.Text + "',productImage ='" + fuProdImage.ID + "' where productid ='" + prodid + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Product.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "delete from Product where productid ='" + prodid + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Product.aspx");
        }
    }
}