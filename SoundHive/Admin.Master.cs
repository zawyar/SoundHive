using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                // Response.Redirect("Login.aspx");
                username_placeholder.InnerText = "Generic User";
            }
            else
            {
                username_placeholder.InnerText = Convert.ToString(Session["username"]);
            }

        }
    }
}