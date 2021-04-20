<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="edit-profile.aspx.cs" Inherits="SoundHive.edit_profile" %>
<asp:Content ID="css" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/EditProfile" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div class="" style="box-sizing:border-box;">
				<h1 class="title">Edit Profile</h1>

	<div>
	<div class="grid">
		<div class="form-group a">
			<label for="name">Name</label>
			<asp:Textbox ID="name" runat="server" ></asp:Textbox>
		</div>

		<div class="form-group b">
			<label for="firstname">First Name</label>
			<asp:Textbox ID="firstname"  runat="server"></asp:Textbox>
		</div>

		<div class="form-group email-group">
			<label for="email">Email</label>
			<asp:Textbox ID="email" runat="server"></asp:Textbox>
		</div>

		<div class="form-group phone-group">
			<label for="phone">Telephone</label>
			<asp:Textbox ID="phone" runat="server"></asp:Textbox>
		</div>

		<div class="textarea-group">
			<label for="bio">Bio</label>
			<textarea id="bio"></textarea>
		</div>

		<div class="form-group">
			<label for="address">Address</label>
			<asp:Textbox ID="address" runat="server"></asp:Textbox>
		</div>

		<div class="form-group">
			<label for="city">City</label>
			<asp:Textbox ID="city" runat="server"></asp:Textbox>
		</div>

		<div class="form-group">
			<label for="zip">Postal Code</label>
			<asp:Textbox ID="zip" runat="server"></asp:Textbox>
		</div>
	</div>

	
	</div>
	<div class="button-container">
		<asp:Button CssClass="button" runat="server" Text="Register Modifications"></asp:Button>
	</div>
</div>
</asp:Content>
