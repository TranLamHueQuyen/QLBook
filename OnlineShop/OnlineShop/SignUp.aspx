<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OnlineShop.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
	<div class="signup">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-sm-12 col-md-12">
					<div class="content">
						<div>
								<span class="title">Tạo Tài Khoản Mới</span>
								<div class="item">
									<p>Tên Người Dùng</p>
									<asp:TextBox ID="username" runat="server" TextMode="SingleLine"></asp:TextBox>
								</div>
								<div class="item">
									<p>Email</p>
									<asp:TextBox ID="email" runat="server" TextMode="SingleLine"></asp:TextBox>
								</div>
								<div class="item">
									<p>Mật Khẩu</p>
									<asp:TextBox ID="password" runat="server" TextMode="SingleLine"></asp:TextBox>
								</div>
								<span>Bằng cách đăng ký, bạn xác nhận rằng bạn đã đọc và chấp nhận Thông báo người dùng và Chính sách quyền riêng tư của chúng tôi.</span>
								<div class="item">
									<asp:Label ID="kttxt" runat="server" Color="Red"></asp:Label>
								</div>
								<asp:Button ID="submit" runat="server" Text="Đăng Kí" OnClick="submit_Click" />
							</div>
					</div> 
				</div>
				<div class="col-lg-5 col-sm-12 col-md-12">
					<div class="content">
						<span>Hoặc đăng kí với</span>
						<button class="google">
							<img src="images/shop/google.png" />
							<p>Tiếp tục với Google</p>
						</button>
						<button class="facebook">
							<img src="images/shop/facebook.png" />
							<p>Tiếp tục với Facebook</p>
						</button>
						<div class="login">
							<span>Bạn chưa có tài khoản?</span>
							<a href="/Login.aspx">Đăng Nhập</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
