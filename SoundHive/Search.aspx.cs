using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

		protected void SignIn_Click(object sender, EventArgs e)
		{
            try
            {
                DAL handler = new DAL();
                //call procedure??

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while signing in: " + ex.Message);
            }


        }
	}
}