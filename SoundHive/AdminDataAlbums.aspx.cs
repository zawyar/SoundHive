using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SoundHive
{
    public partial class AdminDataAlbums : System.Web.UI.Page
    {

        protected void Delete_Click(object sender, EventArgs e)
        {
            DAL handler = new DAL();
            Button b1 = (Button)sender;
            int id = Convert.ToInt32(b1.CommandArgument);
            if (handler.DeleteAlbum(id))
            {

                Response.Redirect("AdminDataAlbums.aspx");

            }
            else
            {
                //UserAlreadyExists.InnerText = "Account does not exist";
            }

        }


        protected void DisplayAnAlbum(string name, string userName, int id)
        {
            card.Controls.Add(new LiteralControl("<a href='AlbumDescription.aspx'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'https://i.pinimg.com/736x/02/b8/94/02b894f7ea6ad9f724648ee511ad018f--edm-music-house-music.jpg' alt=''><div id = '" + id + "' class='title'>" + name + "</div></div>"));

            Button b1 = new Button();
            b1.Text = "Delete Album";
            b1.Width = 130;

            b1.CssClass = "Button";
            b1.CommandArgument = id.ToString();
            b1.Click += new EventHandler(Delete_Click);
            card.Controls.Add(b1);
        }

        public void DisplayAlbums()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllAlbums();
            string name, userName;
            int id;


            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    name = obj.GetString(0);
                    userName = obj.GetString(2);
                    id = obj.GetInt32(1);
                    DisplayAnAlbum(name, userName, id);

                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayAlbums();
        }
    }
}