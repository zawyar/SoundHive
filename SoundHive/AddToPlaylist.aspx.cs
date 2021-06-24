using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class AddToPlaylist : System.Web.UI.Page
    {
        List<int> songIds= new List<int>();
        protected void DisplayASong(int tracknum, int id, string title, string username, int num)
        {

            track.Controls.Add(new LiteralControl("<div class='track'><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><input type='checkbox' name='song"+id+"' id='song"+id+"' value='"+id+"'></i></div></div>"));


        }

        public void DisplaySongs()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllSongs();
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
                    songIds.Add(id);
                    DisplayASong(i, id, title, username, numofplays);
                    i++;
                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            

            DisplaySongs();

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"].Length>0)
            {
                int playlistId = Convert.ToInt32(Request.QueryString["id"]);
                DAL handler = new DAL();
                foreach (string key in Request.Form.AllKeys)
                {
                    if (key.StartsWith("song"))
                    {

                        handler.AddSongToPlaylist(playlistId,Convert.ToInt32(Request.Form[key]));

                    }
                }
            }
            
            
        }
    }
}