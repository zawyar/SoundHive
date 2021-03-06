<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="SoundHive.Browse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/Content/BrowseCSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div style="height:849px;overflow-y:scroll">
	   <div class="artist__navigation" >
		
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation">
			<a href="Browse.aspx">All</a>
		</li>
			
		<li role="presentation">
			<a href="BrowseAlbums.aspx">Albums</a>
		</li>

			<li role="presentation">
			<a href="BrowseArtists.aspx">Artists</a>
		</li>
			 <li role="presentation">
			<a href="BrowseGenres.aspx">Genres</a>
		</li>
			
		<!--<li role="presentation">
			<a href="#artist-about" aria-controls="artist-about" role="tab" data-toggle="tab">About</a>
		</li>-->
			
		</ul>
		  
		
		  
	</div>
	 <div class="overview__albums">
			   
			<div class="album">
				
				
				  
				<div class="album__tracks">
				  
				<div id="track" runat="server" class="tracks">
					  
					<div class="tracks__heading">
					  
					<div class="tracks__heading__number">#</div>
						
					<div class="tracks__heading__title">Song</div>
						
					<div class="tracks__heading__length">
						
						<i class="ion-ios-stopwatch-outline"></i>
						  
					</div>
						
					<div class="tracks__heading__popularity">
						
						<i class="ion-thumbsup"></i>
						  
					</div>
						
					</div>
					
					
				</div>
					
				</div>
				  
			</div>
				
			</div>
		</div> 
	


</asp:Content>
