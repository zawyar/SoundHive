using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class UploadSongs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindDataToDropDown();
        }
        protected void BindDataToDropDown()
        {
            string username = Session["username"].ToString();
            DAL handler = new DAL();
            SqlDataReader albumData = handler.GetAlbumSummaryByUser(username);
            Dictionary<int, string> dAlbums = new Dictionary<int, string>();

            if (albumData.HasRows)
            {
                while (albumData.Read())
                {
                    dAlbums.Add(albumData.GetInt32(0), albumData.GetString(1));
                }
            }
            Album.DataTextField = "Value";
            Album.DataValueField = "Key";
            Album.DataSource = dAlbums;
            Album.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = EnterTitle.Text;
            string username= Session["username"].ToString();
            int albumId= Convert.ToInt32(Album.SelectedValue);
            DateTime date = DateTime.Now;
            byte[] song = new byte [SongUpload.FileContent.Length-1];
            song = SongUpload.FileBytes;
            DAL handler = new DAL();
            if (!handler.AddSong(name, username, albumId,date,song))
            {
                System.Diagnostics.Debug.WriteLine("Error while adding song \n");

            }

        }
    }
}