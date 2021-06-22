using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
namespace SoundHive
{
    public partial class BrowseAlbums : System.Web.UI.Page
    {

        protected void DisplayAnAlbum(string name,int id)
        {
            card.Controls.Add(new LiteralControl("<a href='AlbumDescription.aspx?id="+id+"'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'AlbumImageHandler.ashx?id="+id+"' alt=''><div class='title'>" + name + "</div></div>"));


        }

        public void DisplayAlbums()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllAlbums();
            string name;
            int id;
            
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    name = obj.GetString(0);

                    id = obj.GetInt32(1);
                    DisplayAnAlbum(name,id);

                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayAlbums();
        }
    }
}