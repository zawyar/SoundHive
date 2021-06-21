using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class edit_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
  
            DAL handler = new DAL();
            string usrn = Session["username"].ToString();

            if (handler.DeleteAccount(usrn))
            {

                Response.Redirect("Login.aspx");

            }
            else
            {
                UserAlreadyExists.InnerText = "Account does not exist";
            }
        }
        protected void EditProfile_Click(object sender, EventArgs e)
        {
            DAL handler = new DAL();
            string usrn = Session["username"].ToString();

           
            if (String.IsNullOrEmpty(name.Text))
            {
                name.Text = "NULL";
            }
            if (String.IsNullOrEmpty(email.Text))
            {
               email.Text = "NULL";
            }
            if (String.IsNullOrEmpty(Password.Text))
            {
                Password.Text = "NULL";
            }
            //if (DateTime.IsNullOrEmpty(DOB.SelectedDate))
            //{
            //    name.Text = "NULL";
            //}
            if (handler.EditProfile(usrn, name.Text, email.Text, DOB.SelectedDate, Password.Text)==true)
            {
                UserAlreadyExists.InnerText = "Changes to account were saved";
                //Response.Redirect("Dashboard.aspx");
               
            }
            else
            {
                UserAlreadyExists.InnerText = "Username or Email already exists fdfhgdsyf";
            }

        }
    }
}