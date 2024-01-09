<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QLSanPham.aspx.cs" Inherits="OnlineShop.QLSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container-fluid px-4">
		<h1 class="mt-4">Quản lý sản phẩm</h1>
        <hr />   
		<a href="/AddSanPham.aspx" class="btn btn-primary">
			  Thêm sản phẩm
			</a>
			<br />
			<br />
		<asp:GridView ID="listProduct" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="listProduct_RowDeleting">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:TemplateField HeaderText="Id Sản Phẩm">
					<ItemTemplate>
						<asp:Label ID="idSanPham" runat="server" Text='<%# Eval("ProductId") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Tên Sản Phẩm">
					<ItemTemplate>
						<asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>' Width="250px"></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Danh Mục">
					<ItemTemplate>
						<asp:Label ID="Label3" runat="server" Text='<%# Eval("CateName") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Hình ảnh">
					<ItemTemplate>
						<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="65px"/>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Mô Tả">
					<ItemTemplate>
						<asp:Label ID="Label4" runat="server" Text='<%# Eval("Introduction") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Giá">
					<ItemTemplate>
						<asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Tồn kho">
					<ItemTemplate>
						<asp:Label ID="Label6" runat="server" Text='<%# Eval("LnStock") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Sửa">
					<ItemTemplate>
						<asp:LinkButton ID="suaSanPham" runat="server" CommandArgument='<%# Eval("ProductId") %>' onClick="suaSanPham_Click">Sửa</asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="" ShowHeader="False">
							<ItemTemplate>
								<asp:LinkButton ID="lbDelete" runat="server" OnClientClick="return confirm('Bạn muốn xóa sản phẩm này?')" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateField>
			</Columns>
			<EditRowStyle BackColor="#7C6F57" />
			<FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
			<HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
			<PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
			<RowStyle BackColor="#E3EAEB" />
			<SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
			<SortedAscendingCellStyle BackColor="#F8FAFA" />
			<SortedAscendingHeaderStyle BackColor="#246B61" />
			<SortedDescendingCellStyle BackColor="#D4DFE1" />
			<SortedDescendingHeaderStyle BackColor="#15524A" />
		</asp:GridView>
	</div>
</asp:Content>
