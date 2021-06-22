﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Convert.ToString(Request.QueryString["username"]);
            ArtistName.InnerText = name;

            profileimage.Src = "ArtistImageHandler.ashx?username=" + name;
            profileimage.Alt = "";

        }

        protected void DisplayASong(int tracknum, int id, string title, string username, int num)
        {

            track.Controls.Add(new LiteralControl("<a href='SongHandler.ashx?id=" + id + "'><div class='track'><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><i class=\"ion-arrow-graph-up-right\"></i></div></div></a>"));


        }

        public void DisplaySongs(int albumId)
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.GetAlbumSongsById(albumId);
            string title, username;
            int numofplays;
            int i = 1;
            int id = -1;
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    id = obj.GetInt32(0);
                    title = obj.GetString(1);


                    username = obj.GetString(3);
                    numofplays = obj.GetInt32(4);

                    DisplayASong(i, id, title, username, numofplays);
                    i++;
                }
            }

        }
    }
}