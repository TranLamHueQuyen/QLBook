using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineShop
{
	public partial class AddDanhMuc : System.Web.UI.Page
	{
		Connect connect = new Connect();
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnAddDanhMuc_Click(object sender, EventArgs e)
		{
			if (ktData())
			{
				connect.getConnect();
				string sql = "insert into ProductCategory(CateName, Icon, Status) values(N'" + name.Text + "', '" + link.Text + "', 1)";
				Response.Write(sql);
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