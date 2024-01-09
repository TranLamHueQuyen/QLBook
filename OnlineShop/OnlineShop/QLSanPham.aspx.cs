using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineShop
{
	public partial class QLSanPham : System.Web.UI.Page
	{
		Connect connect = new Connect();
		protected void Page_Load(object sender, EventArgs e)
		{
			getProduct();
		}
		public void getProduct()
		{
			string sql = "select ProductId, ProductName, c.CateName, ImagePath, LnStock, Introduction, Price from Product as p, ProductCategory as c where p.CateId=c.CateId";
			listProduct.DataSource = connect.getData(sql); ;
			listProduct.DataBind();
		}

		protected void suaSanPham_Click(object sender, EventArgs e)
		{
			string idSanPham = ((LinkButton)sender).CommandArgument;
			Response.Redirect("UpdateSanPham.aspx?idSanPham=" + idSanPham);
		}

		protected void listProduct_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{
			connect.getConnect();
			Label textBox = (Label)listProduct.Rows[e.RowIndex].FindControl("idSanPham");
			int idProduct = textBox != null ? Convert.ToInt32(textBox.Text) : 0;
			string sql = "delete from Product where ProductId='" + idProduct + "'";
			SqlCommand cmd = new SqlCommand(sql, connect.cn);
			cmd.ExecuteNonQuery();
			connect.cn.Close();
			getProduct();
		}
	}
}