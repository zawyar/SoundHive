using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Convert.ToString(Request.QueryString["username"]);
            ArtistName.InnerText = name;

            profileimage.Src = "ArtistImageHandler.ashx?username=" + name;
            profileimage.Alt = "";
            string displaySongsString = DisplaySongsString(name);
            tracks.Controls.Add(new LiteralControl(displaySongsString));

        }
        //Returns an album header without the ending div tags, remember to add two div tags to complete wrapping the songs.
        protected string DisplayAnAlbumHTML(int albumId, string albumName, string albumReleaseDate )
        {
            return "<div id='album' class='album'><div class='album__info'>" +
                "<div class='album__info__art'>" +
                "<img src = 'AlbumImageHandler.ashx?id="+albumId+"' alt='"+albumName+"' />" +
                "</div><div class='album__info__meta'>" +
                "<div class='album__year'>"+albumReleaseDate+"</div>" +
                "<div class='album__name'>"+albumName+ "</div></div></div><div class='album__tracks'><div id='track' runat='server' class='tracks'><div class='tracks__heading'>" +
                " <div class='tracks__heading__number'>#</div>" +
                "  <div class='tracks__heading__title'>Song</div>" +
                "  <div class='tracks__heading__length'>  <i class='ion-ios-stopwatch-outline'></i></div>" +
                "  <div class='tracks__heading__popularity'>  <i class='ion-thumbsup'></i></div>" +
                "  </div></div></div><div class='tracks'>";

        }
        protected string DisplayASongHTML(int tracknum, int id, string title, string username, int num)
        {
            //
            return "<a href = 'SongHandler.ashx?id=" + id + "' ><div class='track'><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><i class=\"ion-arrow-graph-up-right\"></i></div></div></a>";


        }

        public string DisplaySongsString(string userName)
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.GetAlbumsByUser(userName);
            string title, username;
            int numofplays;
            int i = 1;
            int id = -1;
            string songsend = "</div></div></div>"; //Div tags to indicate end of current album id's songs
            string songs = "";
            string albumsSoFar = "";
            int albumId = -1;
            string albumName = "";
            string albumReleaseDate = "";
            if (obj.HasRows)
            {

                while (obj.Read())
                {
                    if(obj.GetInt32(0) != albumId && albumId==-1)
                    {
                        i = 1;
                        albumId = obj.GetInt32(0);
                        albumName = obj.GetString(1);
                        albumReleaseDate = obj.GetDateTime(6).ToString("yyy");
                        songs = songs + DisplayAnAlbumHTML(albumId,albumName,albumReleaseDate);

                    }
                    else if(obj.GetInt32(0) != albumId)
                    {
                        songs = songs + songsend;
                        albumId = obj.GetInt32(0);
                        albumName = obj.GetString(1);
                        albumReleaseDate = obj.GetDateTime(6).ToString("yyy");
                        songs = songs + DisplayAnAlbumHTML(albumId, albumName, albumReleaseDate);

                    }
                    id = obj.GetInt32(2);
                    title = obj.GetString(4);


                    username = obj.GetString(7);
                    numofplays = obj.GetInt32(5);

                    songs=songs+DisplayASongHTML(i, id, title, username, numofplays);
                    i++;
                }
            }
            return songs + songsend;
        }
    }
}