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
	public partial class QLDanhMuc : System.Web.UI.Page
	{
		Connect connect = new Connect();
		protected void Page_Load(object sender, EventArgs e)
		{
			getCategory();
		}
		public void getCategory()
		{
			string sql = "select * from ProductCategory";
			listCategory.DataSource = connect.getData(sql); ;
			listCategory.DataBind();
		}

		protected void SuaCategory_Click(object sender, EventArgs e)
		{
			string idDanhMuc = ((LinkButton)sender).CommandArgument;
			Response.Redirect("UpdateDanhMuc.aspx?idDanhMuc=" + idDanhMuc);
		}

		protected void listCategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{
			connect.getConnect();
			Label textBox = (Label)listCategory.Rows[e.RowIndex].FindControl("idCate");
			int idCate = textBox != null ? Convert.ToInt32(textBox.Text) : 0;
			string sql = "delete from ProductCategory where CateId='" + idCate + "'";
			SqlCommand cmd = new SqlCommand(sql, connect.cn);
			cmd.ExecuteNonQuery();
			connect.cn.Close();
			getCategory();
		}
	}
}