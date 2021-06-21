using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class AdminDataSongs : System.Web.UI.Page
    {
        protected void Delete_Click(object sender, EventArgs e)
        {
            DAL handler = new DAL();
            Button b1 = (Button)sender;
            int id = Convert.ToInt32(b1.CommandArgument);
            if (handler.DeleteSong(id))
            {

                Response.Redirect("AdminDataSongs.aspx");

            }
            else
            {
                //UserAlreadyExists.InnerText = "Account does not exist";
            }

        }

        protected void DisplayASong(int tracknum, string title, string username, int num, int id)
        {


            track.Controls.Add(new LiteralControl("<div class=\"track\"><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div id = '" + id + "'class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><i class=\"ion-arrow-graph-up-right\"></i></div></div>"));

            Button b1 = new Button();
            b1.Text = "Delete Song";
            b1.Width = 130;

            b1.CssClass = "Button";
            b1.CommandArgument = id.ToString();
            b1.Click += new EventHandler(Delete_Click);
            track.Controls.Add(b1);
        }
       
        public void DisplaySongs()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllSongs();
            string title, username;
            int numofplays;
            int i = 1;
            int id;
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    title = obj.GetString(0);
                    username = obj.GetString(1);
                    numofplays = obj.GetInt32(2);
                    id = obj.GetInt32(3);
                    DisplayASong(i, title, username, numofplays, id);
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