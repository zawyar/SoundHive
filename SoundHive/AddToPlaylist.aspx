<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddToPlaylist.aspx.cs" Inherits="SoundHive.AddToPlaylist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/Content/BrowseCSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<div style="height:849px;overflow-y:scroll">
        <asp:Button ID="Button1" CssClass="btn btn-primary btn-success" runat="server" Text="Add Songs To Playlist" OnClick="Button1_Click" />
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
