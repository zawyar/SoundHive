using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class AdminDataOverview : System.Web.UI.Page
    {
        public int count;
        protected void Page_Load(object sender, EventArgs e)
        {
            count=0;
            DAL handler = new DAL();
            handler.getNewUserCount(ref count);

        }
    }
}