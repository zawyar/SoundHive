<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlbumDescription.aspx.cs" Inherits="SoundHive.AlbumDescription" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<div style="height:849px;overflow-y:scroll"> 


			 <div class="artist__header">
	  
	<div class="artist__info" runat="server">
		
		<div class="profile__img" >
		  
		<img id="albumimage" src="" alt="" runat="server"/>
			
		</div>
		  
		<div  class="artist__info__meta">
		  
		<div class="artist__info__type">Album</div>
			
		<div id="albumname" class="artist__info__name" runat="server"></div>
		<div id="albumdate" class="artist__info__type" runat="server"></div>
			
		</div>
		  
		  
	</div>
		
	
		
	
		
	</div>
				
			<div class="album">
				
				
				  
				<div class="album__tracks">
				  
				<div class="tracks"  id="track" runat="server">
					  
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
	 
		
  
</asp:Content>
