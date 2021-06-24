using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        protected void SignUp_Click(object sender, EventArgs e)
        {
            DAL handler = new DAL();
            byte[] image = new byte[ImageUpload.FileContent.Length - 1];
            image =ImageUpload.FileBytes;
            if (handler.RegisterUser(username.Text, email.Text,DOB.SelectedDate, password.Value,image))
            {
                Session["username"] = username.Text;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                UserAlreadyExists.InnerText = "A USER WITH THE GIVEN CREDENTIALS ALREADY EXISTS";
            }
        }
    }
}