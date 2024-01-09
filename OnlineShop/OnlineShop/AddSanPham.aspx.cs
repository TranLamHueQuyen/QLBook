using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace OnlineShop
{
	public partial class AddSanPham : System.Web.UI.Page
	{
		Connect connect = new Connect();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			getCategory();
		}

		private void getCategory()
		{
			string sql2 = "select * from ProductCategory";
			danhmuc.DataTextField = "CateName";
			danhmuc.DataValueField = "CateId";
			danhmuc.DataSource = connect.getData(sql2);
			danhmuc.DataBind();
		}

		protected void btnBack_Click(object sender, EventArgs e)
		{
			Response.Redirect("QLSanPham.aspx");
		}

		protected void btnAddSanPham_Click(object sender, EventArgs e)
		{
			if (ktData())
			{
				connect.getConnect();
				string sql = "insert into Product(CateId, ProductName, ImagePath, Introduction, LnStock, OnOrder ,Price, Bought)"+
					" values(" + danhmuc.SelectedValue + ", N'" + name.Text + "', '" + link.Text + "', N'" + infor.Text + "', 10, 0, " + gia.Text + ", 0)";
				Response.Write(sql);
				SqlCommand cmd2 = new SqlCommand(sql, connect.cn);
				int kt2 = -1;
				kt2 = int.Parse(cmd2.ExecuteNonQuery() + "");
				connect.cn.Close();
				Response.Redirect("QLSanPham.aspx");
			}

			else
			{
				kttxt.Text = "Vui lòng nhập đầy đủ thông tin!";
			}
		}
		Boolean ktData()
		{
			if (name.Text.Count() <= 0)
				return false;
			else if (link.Text.Count() <= 0)
				return false;
			else if (infor.Text.Count() <= 0)
				return false;
			else if (gia.Text.Count() <= 0)
				return false;
			return true;
		}
	}
}