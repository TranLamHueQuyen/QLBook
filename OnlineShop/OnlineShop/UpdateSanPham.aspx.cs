using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using OnlineShop.Models;

namespace OnlineShop
{
	public partial class UpdateSanPham : System.Web.UI.Page
	{
		Connect connect = new Connect();
		Product product;
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			connect.getConnect();
			string sql = "select * from Product where ProductId=" + Request.QueryString["idSanPham"].ToString();
			DataTable dt = connect.getData(sql);
			foreach (DataRow dr in dt.Rows)
			{
				product = new Product(dr["Introduction"] + "", dr["ProductName"] + "", dr["ImagePath"] + "", int.Parse(dr["Price"] + ""));
			}
			name.Text = product.ProductName;
			link.Text = product.ImagePath;
			infor.Text = product.Introduction;
			gia.Text = product.Price+"";
		}
		protected void btnBack_Click(object sender, EventArgs e)
		{
			Response.Redirect("QLSanPham.aspx");
		}

		protected void btnUpdateSanPham_Click(object sender, EventArgs e)
		{
			connect.getConnect();
			string sql = "Update Product set Introduction = N'" + infor.Text + "', ProductName=N'" + name.Text + "', ImagePath='" + link.Text + "', Price=" + gia.Text + " where ProductId=" + Request.QueryString["idSanPham"].ToString();
			SqlCommand cmd2 = new SqlCommand(sql, connect.cn);
			int kt2 = -1;
			kt2 = int.Parse(cmd2.ExecuteNonQuery() + "");
			connect.cn.Close();
			Response.Redirect("QLSanPham.aspx");
		}
	}
}