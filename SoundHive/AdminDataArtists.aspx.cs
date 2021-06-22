using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace SoundHive
{
    public partial class AdminDataArtists : System.Web.UI.Page
    {

        protected void Delete_Click(object sender, EventArgs e)
        {
            DAL handler = new DAL();
            Button b1 = (Button)sender;
            string usrn = b1.CommandArgument;
            if (handler.DeleteAccount(usrn))
            {

                Response.Redirect("AdminDataArtists.aspx");

            }
            else
            {
                //UserAlreadyExists.InnerText = "Account does not exist";
            }

        }
        protected void DisplayAnArtist(string name)
        {
            card.Controls.Add(new LiteralControl("<a href='ArtistDescription.aspx'><div class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'ArtistImageHandler.ashx?username=" + name + "' alt=''><div id = 't1' class='title'>" + name + "</div></div>	</a>"));
            Button b1 = new Button();
            b1.Text = "Delete User";
            b1.Width = 30;
      
            b1.CssClass = "Button";
            b1.CommandArgument = name.ToString();
            b1.Click += new EventHandler(Delete_Click);
            card.Controls.Add(b1);

            //card.Controls.Add(new LiteralControl("<asp:Button ID='Button1' Cssclass='Button' runat='server' Text='Upload' />"));

        }

        public void DisplayArtists()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllArtists();
            string name;
            //image??
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    name = obj.GetString(0);


                    DisplayAnArtist(name);

                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayArtists();
        }
    }
}