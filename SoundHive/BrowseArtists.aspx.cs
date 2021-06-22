using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class BrowseArtists : System.Web.UI.Page
    {

        protected void DisplayAnArtist(string name)
        {
            card.Controls.Add(new LiteralControl("<a href='ArtistDescription.aspx?username=" +name + "'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'ArtistImageHandler.ashx?username=" + name + "' alt=''><div class='title'>" + name + "</div></div>"));


        }

        public void DisplayArtists()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllArtists();
            string name;
            //image??
          
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    name = obj.GetString(0);
                   

                    DisplayAnArtist(name);

                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayArtists();
        }
    }
}