using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class Browse : System.Web.UI.Page
    {
 
        protected void DisplayASong(int tracknum, string title, string username , int num)
        {


            track.Controls.Add(new LiteralControl("<div class=\"track\"><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><i class=\"ion-arrow-graph-up-right\"></i></div></div>"));

            
        }
        public void DisplaySongs()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllSongs();
            string title, username;
            int numofplays;
            int i=1;
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    title = obj.GetString(0);
                    username = obj.GetString(1);
                    numofplays = obj.GetInt32(2);
                    
                    DisplayASong(i, title, username, numofplays);
                    i++;
                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            DisplaySongs();

        }
    }
}