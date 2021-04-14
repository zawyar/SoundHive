<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="edit-profile.aspx.cs" Inherits="SoundHive.edit_profile" %>
<asp:Content ID="css" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/Content/EditProfile" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div class="container">

	<h1 class="title">Modifier mon profil</h1>

	<div class="grid">
		<div class="form-group a">
			<label for="name">Nom</label>
			<input id="name" type="text">
		</div>

		<div class="form-group b">
			<label for="first-name">Prénom</label>
			<input id="first-name" type="text">
		</div>

		<div class="form-group email-group">
			<label for="email">Email</label>
			<input id="email" type="text">
		</div>

		<div class="form-group phone-group">
			<label for="phone">Téléphone (mobile)</label>
			<input id="phone" type="text">
		</div>

		<div class="textarea-group">
			<label for="bio">Bio</label>
			<textarea id="bio"></textarea>
		</div>

		<div class="form-group">
			<label for="address">Adresse</label>
			<input id="address" type="text">
		</div>

		<div class="form-group">
			<label for="city">Ville</label>
			<input id="city" type="text">
		</div>

		<div class="form-group">
			<label for="zip">Code postal</label>
			<input id="zip" type="text">
		</div>
	</div>

	<div class="checkboxes">

		<div class="checkbox-group">
			<input id="newsletter" type="checkbox">
			<label for="newsletter">Je souhaite recevoir la newsletter</label>
		</div>

		<div class="checkbox-group">
			<input id="newsletter-partners" type="checkbox">
			<label for="newsletter-partners">Je souhaite recevoir la newsletter des partenaires</label>
		</div>

	</div>

	<div class="button-container">
		<button class="button">Enregister les modifications</button>
	</div>
</div>
</asp:Content>
