<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDataSongs.aspx.cs" Inherits="SoundHive.AdminDataSongs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/Content/BrowseCSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div style="height:849px;overflow-y:scroll">
	   <div class="artist__navigation" >
		
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation">
			<a href="AdminDataOverview" >Overview</a>
		</li>
			<li role="presentation">
			<a href="AdminDataSongs" >Manage Songs</a>
		</li>
			<li role="presentation">
			<a href="AdminDataAlbums" >Manage Albums</a>
		</li>
			<li role="presentation">
			<a href="AdminDataArtists" >Manage Users</a>
		</li>
			 <li role="presentation">
			 <a href="AdminDataGenres" >Manage Genres</a>
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
