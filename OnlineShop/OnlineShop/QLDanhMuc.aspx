<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="QLDanhMuc.aspx.cs" Inherits="OnlineShop.QLDanhMuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container-fluid px-4">
		<h1 class="mt-4">Quản lý danh mục</h1>
        <hr />
		<a href="/AddDanhMuc.aspx" class="btn btn-primary">
			  Thêm danh mục
			</a>
			<br />
			<br />
		<asp:GridView ID="listCategory" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="listCategory_RowDeleting">
			<AlternatingRowStyle BackColor="White" />
			<Columns>
				<asp:TemplateField HeaderText="Id Danh Mục">
					<ItemTemplate>
						<asp:Label ID="idCate" runat="server" Text='<%# Eval("CateId") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Tên Danh mục">
					<ItemTemplate>
						<asp:Label ID="Label2" runat="server" Text='<%# Eval("CateName") %>'></asp:Label>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Hình ảnh">
					<ItemTemplate>
						<asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Icon") %>' Width="60px"/>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Sửa">
					<ItemTemplate>
						<asp:LinkButton ID="SuaCategory" runat="server" Text="Sửa" CommandArgument='<%# Eval("CateId") %>' OnClick="SuaCategory_Click"></asp:LinkButton>
					</ItemTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="" ShowHeader="False">
							<ItemTemplate>
								<asp:LinkButton ID="lbDelete" runat="server" OnClientClick="return confirm('Bạn muốn danh mục này?')" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
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
