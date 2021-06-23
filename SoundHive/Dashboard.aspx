<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SoundHive.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/Content/CardsCSS" />
	  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div style="height:849px;overflow-y:scroll"> 
	<div class="wrapper">
		<h1>Genres</h1>
		<div id="genreCards" class="cards" runat="server">
		
	</div>
		<h1>Artists</h1>
		<div id="ArtistCards" class="cards" runat="server">
		
		</div>
		<h1>Albums</h1>
		<div id="AlbumCards" class="cards" runat="server">
		
	</div>
		
	
	</div>
	</div>
</asp:Content>
