using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class GenreDescription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            DAL handler = new DAL();
          
            SqlDataReader obj = handler.GetNameByGenreId(id);
            obj.Read();
            string name = obj.GetString(0);
            GenreName.InnerText = name;
            DisplaySongs(id);
            DisplayAlbums(id);

        }

        protected void DisplayAnAlbum(string name, int id)
        {
            card.Controls.Add(new LiteralControl("<a href='AlbumDescription.aspx?id=" + id + "'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'AlbumImageHandler.ashx?id=" + id + "' alt=''><div class='title'>" + name + "</div></div>"));


        }

        public void DisplayAlbums(int GenreId)
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.GetAlbumsByGenreId(GenreId);
            string name;
            int id;

            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    id = obj.GetInt32(0);
                    name = obj.GetString(1);

                    
                    DisplayAnAlbum(name, id);

                }
            }

        }

        protected void DisplayASong(int tracknum, int id, string title, string username, int num)
        {


            track.Controls.Add(new LiteralControl("<a href='SongHandler.ashx?id=" + id + "'><div class='track'><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><i class=\"ion-arrow-graph-up-right\"></i></div></div></a>"));


        }

        public void DisplaySongs(int GenreId)
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.GetSongsByGenreId(GenreId);
            string title, username;
            int numofplays;
            int i = 1;
            int id = -1;
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    id = obj.GetInt32(0);
                    title = obj.GetString(1);


                    username = obj.GetString(3);
                    numofplays = obj.GetInt32(4);

                    DisplayASong(i, id, title, username, numofplays);
                    i++;
                }
            }

        }
    }
}