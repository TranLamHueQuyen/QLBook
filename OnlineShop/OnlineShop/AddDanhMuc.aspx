<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddDanhMuc.aspx.cs" Inherits="OnlineShop.AddDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="row">
		<div class="modal-content">
				  <div class="modal-header">
					<h4 class="modal-title" id="myModal">Thêm Danh Mục</h4>
				  </div>
				  <div class="modal-body">
					<div class="form-group">
						<label>Tên danh mục</label>
						<asp:TextBox ID="name" runat="server"></asp:TextBox>
					</div>
					<div class="form-group">
						<label>Link hình ảnh</label>
						<asp:TextBox ID="link" runat="server"></asp:TextBox>
					</div>
					  
					<div class="form-group form-btn">
						<asp:Button ID="btnAddDanhMuc" runat="server" Text="Thêm" OnClick="btnAddDanhMuc_Click"/>
						<asp:Button ID="btnBack" runat="server" Text="Quay Lại" OnClick="btnBack_Click"/>
					</div>
					
				</div>
	</div>
</asp:Content>
