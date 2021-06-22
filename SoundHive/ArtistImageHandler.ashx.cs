using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoundHive
{
    /// <summary>
    /// Summary description for ArtistImageHandler
    /// </summary>
    public class ArtistImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            DAL handler = new DAL();

            context.Response.ContentType = "image/jpeg";
            string usern = Convert.ToString(context.Request.QueryString["username"]);
            byte[] image = handler.getArtistImageFromUsername(usern);
            context.Response.BinaryWrite(image);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}