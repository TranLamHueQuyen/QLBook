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
	public partial class UpdateDanhMuc : System.Web.UI.Page
	{
		ProductCategory category;
		Connect connect = new Connect();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack) return;
			connect.getConnect();
			string sql = "select * from ProductCategory where CateId="+ Request.QueryString["idDanhMuc"].ToString();
			DataTable dt = connect.getData(sql);
			foreach (DataRow dr in dt.Rows)
			{
				category = new ProductCategory(int.Parse(dr["CateId"] +""),dr["CateName"] +"", dr["Icon"]+"");
			}
			name.Text = category.CateName1;
			link.Text = category.Icon1;

		}

		protected void btnUpdateUser_Click(object sender, EventArgs e)
		{
			if (ktData())
			{
				connect.getConnect();
				string sql = "Update ProductCategory set CateName = N'" + name.Text + "', Icon='" + link.Text + "' where CateId=" + Request.QueryString["idDanhMuc"].ToString();

				SqlCommand cmd2 = new SqlCommand(sql, connect.cn);
				int kt2 = -1;
				kt2 = int.Parse(cmd2.ExecuteNonQuery() + "");
				connect.cn.Close();
				Response.Redirect("QLDanhMuc.aspx");
			}
		}

		protected void btnBack_Click(object sender, EventArgs e)
		{
			Response.Redirect("QLDanhMuc.aspx");
		}
		Boolean ktData()
		{
			if (link.Text.Count() <= 0)
				return false;
			else if (name.Text.Count() <= 0)
				return false;
			return true;
		}
	}
}