<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="edit-profile.aspx.cs" Inherits="SoundHive.edit_profile" %>
<asp:Content ID="css" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/Content/EditProfile" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div class="" style="box-sizing:border-box;">
				<h1 class="title">Edit Profile</h1>

	<div>
	<div class="grid">
		<div class="form-group a">
			<label for="name">Name</label>
			<input id="name" type="text">
		</div>

		<div class="form-group b">
			<label for="first-name">First Name</label>
			<input id="first-name" type="text">
		</div>

		<div class="form-group email-group">
			<label for="email">Email</label>
			<input id="email" type="text">
		</div>

		<div class="form-group phone-group">
			<label for="phone">Telephone</label>
			<input id="phone" type="text">
		</div>

		<div class="textarea-group">
			<label for="bio">Bio</label>
			<textarea id="bio"></textarea>
		</div>

		<div class="form-group">
			<label for="address">Address</label>
			<input id="address" type="text">
		</div>

		<div class="form-group">
			<label for="city">City</label>
			<input id="city" type="text">
		</div>

		<div class="form-group">
			<label for="zip">Postal Code</label>
			<input id="zip" type="text">
		</div>
	</div>

	
	</div>
	<div class="button-container">
		<button class="button">Register Modifications</button>
	</div>
</div>
</asp:Content>
