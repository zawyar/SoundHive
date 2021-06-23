using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class AdminDataGenres : System.Web.UI.Page
    {

        protected void Delete_Click(object sender, EventArgs e)
        {
            DAL handler = new DAL();
            Button b1 = (Button)sender;
            int gid = Convert.ToInt32(b1.CommandArgument);
            if (handler.DeleteGenre(gid))
            {

                Response.Redirect("AdminDataGenres.aspx");

            }
            else
            {
                //UserAlreadyExists.InnerText = "Account does not exist";
            }

        }

        protected void AddGenre_Click(object sender, EventArgs e)
        {

            DAL handler = new DAL();
            string name = Genre.Text;
            int bytecount=File1.PostedFile.ContentLength;
            if (bytecount == 0)
            {
                GenreAlreadyExists.InnerText = "No file uploaded";
            }
            byte[] databytes = new byte[bytecount - 1];
            databytes = File1.FileBytes;
            if (handler.AddGenre(name,databytes))
            {

                Response.Redirect("AdminDataGenres.aspx");

            }
            else
            {
                GenreAlreadyExists.InnerText = "Genre already exists";
            }
        }

        protected void DisplayAGenre(string name, int id)
        {
            card.Controls.Add(new LiteralControl("<a href='GenreDescription.aspx'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'GenreImageHandler.ashx?id=" + id + "' alt=''><div id='" + id + "' class='title'>" + name + "</div></div>"));
            Button b1 = new Button();
            b1.Text = "Delete Genre";


            b1.CssClass = "Button";
            b1.CommandArgument = id.ToString();
            b1.Click += new EventHandler(Delete_Click);
            card.Controls.Add(b1);

        }

        public void DisplayGenres()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllGenres();
            string name;
            int id;
            //image??
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    name = obj.GetString(0);
                    id = obj.GetInt32(1);


                    DisplayAGenre(name,id);

                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayGenres();
        }
    }
}