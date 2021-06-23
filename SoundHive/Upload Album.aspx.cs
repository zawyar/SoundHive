using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class Upload_Album : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadGenresDropDown();    
        }

        protected void loadGenresDropDown()
        {

            DAL handler = new DAL();
            SqlDataReader genreData = handler.AllGenres();
            Dictionary<int, string> dGenres = new Dictionary<int, string>();
            
            if (genreData.HasRows)
            {
                while (genreData.Read())
                {
                    dGenres.Add(genreData.GetInt32(1),genreData.GetString(0));
                }
            }
            EnterGenre.DataTextField = "Value";
            EnterGenre.DataValueField = "Key";
            EnterGenre.DataSource = dGenres;
            EnterGenre.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string albumName = Name.Text;
            int genreId = Convert.ToInt32(EnterGenre.SelectedItem.Value);
            byte[] image = new byte [AlbumImageUpload.FileContent.Length-1];
            image = AlbumImageUpload.FileBytes;
            DateTime releaseDate = ReeleaseDate.SelectedDate;
            DAL handler = new DAL();
            if (!handler.AddAlbum(albumName, username, genreId, releaseDate, image))
            {
                System.Diagnostics.Debug.WriteLine("Error while adding album \n");

            }

        }
    }
}