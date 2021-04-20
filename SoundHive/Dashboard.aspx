<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SoundHive.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
	<webopt:bundlereference runat="server" path="~/Content/CardsCSS" />
	  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.2.0/css/all.css'>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div style="height:849px;overflow-y:scroll"> 
	<div class="wrapper">
		<h1>Genres</h1>
		<div class="cards">
		<a href="GenreDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://i.pinimg.com/736x/02/b8/94/02b894f7ea6ad9f724648ee511ad018f--edm-music-house-music.jpg" alt="">
			<div class="title">
				Genre
			</div>
		</div>	
		</a>
		<a href="GenreDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Genre
			</div>
		</div>
		</a>
			<a href="GenreDescription.aspx">
			<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://i.pinimg.com/736x/02/b8/94/02b894f7ea6ad9f724648ee511ad018f--edm-music-house-music.jpg" alt="">
			<div class="title">
				Genre
			</div>
		</div>	
		</a>
		<a href="GenreDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Genre
			</div>
		</div>	
		</a>
		<a href="GenreDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://is4-ssl.mzstatic.com/image/thumb/Music7/v4/4b/06/29/4b062955-ecce-e362-78f1-025f18eed20a/source/1200x1200bb.jpg" alt="">
			<div class="title">
				Genre
			</div>
		</div></a>
			<a href="GenreDescription.aspx">
				<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://media1.popsugar-assets.com/files/thumbor/L-VT9k0GKckWWnpo3n2YBq4f9tE/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/08/03/846/n/37139775/2d0d134e5983773fe90560.65157921_edit_img_image_17921777_1501786115/i/Camila-Cabello-Havana-Song.jpg" alt="">
			<div class="title">
				See All
			</div>
		</div>		
		</a>
	</div>
		<h1>Artists</h1>
		<div class="cards">
		<a href="ArtistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://i.pinimg.com/736x/02/b8/94/02b894f7ea6ad9f724648ee511ad018f--edm-music-house-music.jpg" alt="">
			<div class="title">
				Artist
			</div>
		</div>	
		</a>
		<a href="ArtistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Artist
			</div>
		</div>	
		</a>
		<a href="ArtistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Artist
			</div>
		</div>	
		</a>
			<a href="ArtistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://is4-ssl.mzstatic.com/image/thumb/Music7/v4/4b/06/29/4b062955-ecce-e362-78f1-025f18eed20a/source/1200x1200bb.jpg" alt="">
			<div class="title">
				Artist
			</div>
		</div>	
		</a>
			<a href="ArtistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://media1.popsugar-assets.com/files/thumbor/L-VT9k0GKckWWnpo3n2YBq4f9tE/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/08/03/846/n/37139775/2d0d134e5983773fe90560.65157921_edit_img_image_17921777_1501786115/i/Camila-Cabello-Havana-Song.jpg" alt="">
			<div class="title">
				Artist
			</div>
		</div>	
			</a>
			<a href="ArtistDescription.aspx">
			<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://media1.popsugar-assets.com/files/thumbor/L-VT9k0GKckWWnpo3n2YBq4f9tE/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/08/03/846/n/37139775/2d0d134e5983773fe90560.65157921_edit_img_image_17921777_1501786115/i/Camila-Cabello-Havana-Song.jpg" alt="">
			<div class="title">
				See All
			</div>
		</div>	
				</a>
	</div>
		<h1>Albums</h1>
		<div class="cards">
		<a href="AlbumDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://i.pinimg.com/736x/02/b8/94/02b894f7ea6ad9f724648ee511ad018f--edm-music-house-music.jpg" alt="">
			<div class="title">
				Album
			</div>
		</div>	
		</a>
		<a href="AlbumDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Album
			</div>
		</div>	
		</a>
		<a href="AlbumDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Album
			</div>
		</div>	
		</a>
			<a href="AlbumDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://is4-ssl.mzstatic.com/image/thumb/Music7/v4/4b/06/29/4b062955-ecce-e362-78f1-025f18eed20a/source/1200x1200bb.jpg" alt="">
			<div class="title">
				Album
			</div>
		</div>	
		</a>
			<a href="AlbumDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://media1.popsugar-assets.com/files/thumbor/L-VT9k0GKckWWnpo3n2YBq4f9tE/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/08/03/846/n/37139775/2d0d134e5983773fe90560.65157921_edit_img_image_17921777_1501786115/i/Camila-Cabello-Havana-Song.jpg" alt="">
			<div class="title">
				Album
			</div>
		</div>
			</a>
			<a href="AlbumDescription.aspx">
				<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://media1.popsugar-assets.com/files/thumbor/L-VT9k0GKckWWnpo3n2YBq4f9tE/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/08/03/846/n/37139775/2d0d134e5983773fe90560.65157921_edit_img_image_17921777_1501786115/i/Camila-Cabello-Havana-Song.jpg" alt="">
			<div class="title">
				See All
			</div>
			</div>
					</a>
	</div>
		<h1>Playlists</h1>
		<div class="cards">
		<a href="PlaylistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://i.pinimg.com/736x/02/b8/94/02b894f7ea6ad9f724648ee511ad018f--edm-music-house-music.jpg" alt="">
			<div class="title">
				Playlist
			</div>
		</div>	
		</a>
		<a href="PlaylistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Playlist
			</div>
		</div>	
		</a>
		<a href="PlaylistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://altwall.net/img/albums/adb1c0cbab29b842b28e6aa1e8e57f47_2013.jpg" alt="">
			<div class="title">
				Playlist
			</div>
		</div>	
		</a>
			<a href="PlaylistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://is4-ssl.mzstatic.com/image/thumb/Music7/v4/4b/06/29/4b062955-ecce-e362-78f1-025f18eed20a/source/1200x1200bb.jpg" alt="">
			<div class="title">
				Playlist
			</div>
		</div>	
		</a>
			<a href="PlaylistDescription.aspx">
		<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://media1.popsugar-assets.com/files/thumbor/L-VT9k0GKckWWnpo3n2YBq4f9tE/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/08/03/846/n/37139775/2d0d134e5983773fe90560.65157921_edit_img_image_17921777_1501786115/i/Camila-Cabello-Havana-Song.jpg" alt="">
			<div class="title">
				Playlist
			</div>
		</div>
			</a>
			<a href="PlaylistDescription.aspx">
				<div class="card">
			<div class="overlayer">
				<i class="far fa-play-circle"></i>
			</div>
			<img src="https://media1.popsugar-assets.com/files/thumbor/L-VT9k0GKckWWnpo3n2YBq4f9tE/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/08/03/846/n/37139775/2d0d134e5983773fe90560.65157921_edit_img_image_17921777_1501786115/i/Camila-Cabello-Havana-Song.jpg" alt="">
			<div class="title">
				See All
			</div>
			</div>
					</a>
	</div>
	
	</div>
	</div>
</asp:Content>
