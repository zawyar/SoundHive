using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoundHive
{
    /// <summary>
    /// Summary description for AlbumImageHandler
    /// </summary>
    public class AlbumImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            DAL handler = new DAL();
            
            context.Response.ContentType = "image/jpeg";
            int id = Convert.ToInt32(context.Request.QueryString["id"]);
            byte[] image = handler.getAlbumImageFromId(id);
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