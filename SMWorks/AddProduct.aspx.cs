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
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtProdName.Text = string.Empty;
            ddlProdCate.SelectedIndex = 0;
            txtProdPrice.Text = string.Empty;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string fileName = fuProdImage.PostedFile.FileName; //get file name
                fuProdImage.SaveAs(Server.MapPath("Images/product/" +fileName)); //uplaod to folder product

                //upload the content and image path to table Product
                string query1 = "insert into Product (productName, productCategory, productPrice,productImage) values (@pName,@pCate,@pPrice,@pImage) ";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@pName", txtProdName.Text);
                cmd1.Parameters.AddWithValue("@pCate", ddlProdCate.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@pPrice", txtProdPrice.Text);
                cmd1.Parameters.AddWithValue("@pImage", "Images/product/" + fileName);
                cmd1.ExecuteNonQuery();
                lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
                lblMessage.Text = "Product Added Successfully";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}