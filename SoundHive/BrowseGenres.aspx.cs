﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class BrowseGenres : System.Web.UI.Page
    {

        protected void DisplayAGenre(string name)
        {
            card.Controls.Add(new LiteralControl("<a href='GenreDescription.aspx'><div  class='card'><div class='overlayer'><i class='far fa-play-circle'></i></div><img src = 'https://i.pinimg.com/736x/02/b8/94/02b894f7ea6ad9f724648ee511ad018f--edm-music-house-music.jpg' alt=''><div class='title'>" + name + "</div></div>"));


        }

        public void DisplayGenres()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllGenres();
            string name;
            //image??
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    name = obj.GetString(0);
                    

                    DisplayAGenre(name);
                   
                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayGenres();
        }
    }
}