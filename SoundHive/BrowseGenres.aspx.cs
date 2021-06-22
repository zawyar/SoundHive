using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class BrowseGenres : System.Web.UI.Page
    {

        protected void DisplayAGenre(string name, int id)
        {
            card.Controls.Add(new LiteralControl("<a href='GenreDescription.aspx?id=" + id + "'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'GenreImageHandler.ashx?id=" +id + "' alt=''><div class='title'>" + name + "</div></div>"));


        }

        public void DisplayGenres()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllGenres();
            string name;
            int id;
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