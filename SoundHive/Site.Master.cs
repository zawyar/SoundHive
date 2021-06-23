using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class SiteMaster : MasterPage
    {
        protected void DisplayAPlaylist(string name, int id)
        {
            playlists.Controls.Add(new LiteralControl("<a href='playlistDescription.aspx?id="+id+"' class='navigation__list__item'>" +
                "<i class='ion-ios-musical-notes'></i>" +
                "<span>"+name+"</span></a>"));

        }

        public void DisplayPlaylists()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllPlaylists();
            string name;
            int id;

            int i = 0;
            if (obj.HasRows)
            {
                while (obj.Read() )
                {
                    name = obj.GetString(1);

                    id = obj.GetInt32(0);
                    DisplayAPlaylist(name, id);

                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]==null)
            {
               // Response.Redirect("Login.aspx");
            }
            else
            {
                userimage.Src = "ArtistImageHandler.ashx?username="+ Session["username"].ToString();
                username_placeholder.InnerText = Session["username"].ToString();
               

            }
            DisplayPlaylists();

        }

    }
}