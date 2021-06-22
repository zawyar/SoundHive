using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoundHive
{
    /// <summary>
    /// Summary description for GenreImageHandler
    /// </summary>
    public class GenreImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            DAL handler = new DAL();

            context.Response.ContentType = "image/jpeg";
            int id = Convert.ToInt32(context.Request.QueryString["id"]);
            byte[] image = handler.getGenreImageFromId(id);
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