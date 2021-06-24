<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlaylistDescription.aspx.cs" Inherits="SoundHive.PlaylistDescription" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
		<div style="height:849px;overflow-y:scroll"> 


			 <div class="artist__header">
	  
	<div class="artist__info">
		
		<div class="profile__img">
		  
		<img id="Playlistimage" src="" alt="Rick" runat="server"/>
			
		</div>
		  
		<div class="artist__info__meta">
		  
		<div class="artist__info__type">Playlist</div>
			
		<div id="playlistname" class="artist__info__name" runat="server"></div>
		
				<a id="addSongsButton" class="btn btn-primary btn-success" href="" runat="server">Add Songs</a>

		</div>
		  
		  
	</div>
		
	
		
	
		
	</div>
				
			<div class="album">
				
				
				  
				<div class="album__tracks">
				  
				<div id="track" class="tracks" runat="server">
					  
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

					<%--<div class="track">

					<div class="track__number">1</div>

					<div class="track__added">

						<i class="ion-checkmark-round added"></i>

					</div>

					<div class="track__title">Never Gonna Give You Up</div>

					<div class="track__explicit">

						<span class="label">Explicit</span>

					</div>
						<div class="track__popularity">
						<div class="ion-ios-trash-outline"></div>
					</div>
					<div class="track__length">3:35</div>
					
					<div class="track__popularity">
						
						<i class="ion-arrow-graph-up-right"></i>
						  
					</div>

					</div>
					  
					<div class="track">

					<div class="track__number">2</div>

					<div class="track__added">

						<i class="ion-checkmark-round added"></i>

					</div>

					<div class="track__title">Random</div>

					<div class="track__explicit">

						<span class="label">Explicit</span>

					</div>
							<div class="track__popularity">
						<div class="ion-ios-trash-outline"></div>
					</div>
					<div class="track__length">3:00</div>
					
					<div class="track__popularity">
						
						<i class="ion-arrow-graph-up-right"></i>
						  
					</div>

					</div>
					  
					<div class="track">

					<div class="track__number">3</div>

					<div class="track__added">

						<i class="ion-checkmark-round added"></i>

					</div>

					<div class="track__title featured">
						
						<span class="title">Me, Myself & I</span>
						<span class="feature">Bebe Rexha</span>
						  
					</div>

					<div class="track__explicit">

						<span class="label">Explicit</span>

					</div>
							<div class="track__popularity">
						<div class="ion-ios-trash-outline"></div>
					</div>
					<div class="track__length">4:11</div>
						
					<div class="track__popularity">
						
						<i class="ion-arrow-graph-up-right"></i>
						  
					</div>

					</div>
					  
					<div class="track">

					<div class="track__number">4</div>

					<div class="track__added">

						<i class="ion-checkmark-round added"></i>

					</div>

					<div class="track__title featured">
						
						<span class="title">One Of Them</span>
						<span class="feature">Big Sean</span>
						  
					</div>

					<div class="track__explicit">

						<span class="label">Explicit</span>

					</div>
							<div class="track__popularity">
						<div class="ion-ios-trash-outline"></div>
					</div>
					<div class="track__length">3:20</div>
						
					<div class="track__popularity">
						
						<i class="ion-arrow-graph-down-right"></i>
						  
					</div>

					</div>
					  
					<div class="track">

					<div class="track__number">5</div>

					<div class="track__added">

						<i class="ion-checkmark-round added"></i>

					</div>

					<div class="track__title featured">
						
						<span class="title">Drifting</span>
						<span class="feature">Chris Brown</span>
						<span class="feature">Tory Lanez</span>
						  
					</div>

					<div class="track__explicit">

						<span class="label">Explicit</span>

					</div>
						<div class="track__popularity">
						<div class="ion-ios-trash-outline"></div>
					</div>
					<div class="track__length">4:33</div>
						
					<div class="track__popularity">
						
						<i class="ion-arrow-graph-up-right"></i>
						  
					</div>

					</div>
					  
					<div class="track">

					<div class="track__number">6</div>

					<div class="track__added">

						<i class="ion-checkmark-round added"></i>

					</div>

					<div class="track__title featured">
						
						<span class="title">Of All Things</span>
						<span class="feature">Too $hort</span>
						  
					</div>

					<div class="track__explicit">

						<span class="label">Explicit</span>

					</div>
						<div class="track__popularity">
						<div class="ion-ios-trash-outline"></div>
					</div>
					<div class="track__length">3:34</div>
						
					<div class="track__popularity">
						
						<i class="ion-arrow-graph-up-right"></i>
						  
					</div>

					</div>
					  
					--%>

				</div>
					
				</div>
				  
			</div>
				
			</div>
	 
		

  
</asp:Content>

