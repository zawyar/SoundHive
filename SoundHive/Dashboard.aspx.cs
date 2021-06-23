using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class Dashboard : System.Web.UI.Page
    {
        int CardsPerRow;
        protected void Page_Load(object sender, EventArgs e)
        {
            CardsPerRow = 4;
            DisplayAlbums();
            DisplayArtists();
            DisplayGenres();
        }
        protected void DisplayAGenre(string name, int id)
        {
            genreCards.Controls.Add(new LiteralControl("<a href='GenreDescription.aspx?id=" + id + "'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'GenreImageHandler.ashx?id=" + id + "' alt=''><div class='title'>" + name + "</div></div></a>"));


        }

        public void DisplayGenres()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllGenres();
            string name;
            int id;
            int i = 0;
            if (obj.HasRows)
            {
                while (obj.Read() && i<CardsPerRow)
                {
                    name = obj.GetString(0);
                    id = obj.GetInt32(1);

                    DisplayAGenre(name, id);
                    i++;
                }
            }

        }
        protected void DisplayAnArtist(string name)
        {
            ArtistCards.Controls.Add(new LiteralControl("<a href='ArtistDescription.aspx?username=" + name + "'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'ArtistImageHandler.ashx?username=" + name + "' alt=''><div class='title'>" + name + "</div></div></a>"));


        }

        public void DisplayArtists()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllArtists();
            string name;
            //image??

            int i = 0;
            if (obj.HasRows)
            {
                while (obj.Read() && i < CardsPerRow)
                {
                    name = obj.GetString(0);


                    DisplayAnArtist(name);
                    i++;
                }
            }

        }
        protected void DisplayAnAlbum(string name, int id)
        {
            AlbumCards.Controls.Add(new LiteralControl("<a href='AlbumDescription.aspx?id=" + id + "'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'AlbumImageHandler.ashx?id=" + id + "' alt=''><div class='title'>" + name + "</div></div></a>"));


        }

        public void DisplayAlbums()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllAlbums();
            string name;
            int id;

            int i = 0;
            if (obj.HasRows)
            {
                while (obj.Read() && i < CardsPerRow)
                {
                    name = obj.GetString(0);

                    id = obj.GetInt32(1);
                    DisplayAnAlbum(name, id);
                    i++;
                }
            }

        }
    }
}