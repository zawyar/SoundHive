using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SoundHive
{
    /// <summary>
    /// Summary description for SongHandler
    /// </summary>
    public class SongHandler : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            DAL handler = new DAL();
            int id = Convert.ToInt32(context.Request.QueryString["id"]);

            context.Response.ContentType = "audio/mpeg";
            context.Response.AppendHeader("Content-Disposition", $"attachment; filename="+id.ToString()+".mp3");
            byte[] song = handler.getSongFromId(id);
            System.Diagnostics.Debug.WriteLine("Song length: " + song.Length);
            context.Response.BinaryWrite(song);
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