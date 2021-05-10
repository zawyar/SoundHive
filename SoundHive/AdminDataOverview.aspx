<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminDataOverview.aspx.cs" Inherits="SoundHive.AdminDataOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CssContent" runat="server">
    <webopt:bundlereference runat="server" path="~/Content/AdminData" />
    <webopt:bundlereference runat="server" path="~/Content/BrowseCSS" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
    <div class="wrapper">
      <div class="panel">
        <div class="panel-header">
          <h3 class="title">Statistics</h3>
        </div>
            <div class="panel-body">
              <div class="categories">
                    <div class="category">
                      <span>New Users</span>
                      <span>1.897</span>
                    </div>
                    <div class="category">
                      <span>Recurring Users</span>
                      <span>127</span>
                    </div>
                    <div class="category">
                  <span>Page Views</span>
                  <span>8.648</span>
                </div>
              </div>
          </div>
        </div>
      </div>
</asp:Content>
