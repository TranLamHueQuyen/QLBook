<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddSanPham.aspx.cs" Inherits="OnlineShop.AddSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="row">
		<div class="modal-content">
				  <div class="modal-header">
					<h4 class="modal-title" id="myModal">Thêm sản phẩm</h4>
				  </div>
				  <div class="modal-body">
					<div class="form-group">
						<label>Tên sản phẩm</label>
						<asp:TextBox ID="name" runat="server"></asp:TextBox>
					</div>
					<div class="form-group">
						<label>Link hình ảnh</label>
						<asp:TextBox ID="link" runat="server"></asp:TextBox>
					</div>
					  <div class="form-group">
						<label>Thông tin sản phẩm</label>
						<asp:TextBox ID="infor" runat="server" TextMode="MultiLine"></asp:TextBox>
					</div>
					   <div class="form-group">
						<label>Giá</label>
						<asp:TextBox ID="gia" runat="server"></asp:TextBox>
					</div>
					<div class="form-group">
						<asp:Label ID="kttxt" runat="server" Text=""></asp:Label>
					</div>
					<div class="form-group">
						<label>Danh mục</label>
						<asp:DropDownList ID="danhmuc" runat="server">
						</asp:DropDownList>
					</div>
					<div class="form-group form-btn">
						<asp:Button ID="btnAddSanPham" runat="server" Text="Thêm" onClick="btnAddSanPham_Click"/>
						<asp:Button ID="btnBack" runat="server" Text="Quay Lại" OnClick="btnBack_Click"/>
					</div>
					  </div>
					 
					
				</div>
	</div>
</asp:Content>
