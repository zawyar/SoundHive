using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class CreatePlaylist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        protected void Button1_Click(object sender, EventArgs e)
        {
            DAL handler = new DAL();
            string name = Name.Text;
            string username = Session["username"].ToString();
            if (handler.createPlaylist(name, username))
            {
                System.Diagnostics.Debug.WriteLine("Error while adding playlist \n");

            }
        }
    }
}