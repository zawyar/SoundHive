using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class PlaylistDescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            int playlistimg=-1;

            DisplaySongs(id,ref playlistimg);
            Playlistimage.Src = "AlbumImageHandler.ashx?id="+id;

        }
        protected void DisplayASong(int tracknum, int id, string title, string username, int num)
        {

            track.Controls.Add(new LiteralControl("<a href='SongHandler.ashx?id=" + id + "'><div class='track'><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><i class=\"ion-arrow-graph-up-right\"></i></div></div></a>"));


        }

        public void DisplaySongs(int playlistId, ref int playlistImg)
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.GetPlaylistById(playlistId,ref playlistImg);
            string title, username;
            int numofplays;
            int i = 1;
            int id = -1;

            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    id = obj.GetInt32(4);
                    title = obj.GetString(7);
                    playlistname.InnerText = obj.GetString(1);

                    username = obj.GetString(8);
                    numofplays = obj.GetInt32(11);

                    DisplayASong(i, id, title, username, numofplays);
                    i++;
                }
            }

        }
    }
}