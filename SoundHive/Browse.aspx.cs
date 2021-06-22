using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace SoundHive
{
    public partial class Browse : System.Web.UI.Page
    {
 
        protected void DisplayASong(int tracknum, string title, string username , int num)
        {


            track.Controls.Add(new LiteralControl("<div class='track'><div class=\"track__number\">" + tracknum + "</div> <div class=\"track__added\">" +
                "<i class=\"ion-checkmark-round added\"></i></div> <div class=\"track__title featured\"><span class=\"title\">" + title + "</span>" +
                "<span class=\"feature\">" + username + "</span></div><div class=\"track__explicit\"><span class=\"label\">Explicit</span></div><div class=\"track__length\">" + num + "</div><div class=\"track__popularity\"><i class=\"ion-arrow-graph-up-right\"></i></div></div>"));

            
        }
        private void WriteFile(Byte[] bytes, string fileName)
        {
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "audio/mpeg";
            Response.AddHeader("content-disposition", "attachment;filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
        private void WriteFile(Byte[] bytes, string fileName)
        {
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "audio/mpeg";
            Response.AddHeader("content-disposition", "attachment;filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
        public void DisplaySongs()
        {
            DAL handler = new DAL();
            SqlDataReader obj = handler.AllSongs();
            string title, username;
            int numofplays;
            int i=1;
            int id = -1;
            if (obj.HasRows)
            {
                while (obj.Read())
                {
                    id = obj.GetInt32(0);
                    title = obj.GetString(1);
                    
                    // the file stream for the destination file 
                    System.IO.FileStream fileStream = null;
                    // the writer used to create the destination file
                    System.IO.BinaryWriter writer = null;
                    // the size of the buffer that is read from the database
                    // an written to the file
                    int bufferSize = 1000;
                    // the buffer for the data being transfered from
                    // the database to the file
                    byte[] buffer = new byte[bufferSize];
                    // the start index of the data in the database
                    long startIndex = 0;
                    // the number of bytes read from the database
                    long numberOfBytes = 0;
                    fileStream = new System.IO.FileStream(title+".mp3",
             System.IO.FileMode.OpenOrCreate,
             System.IO.FileAccess.Write);
                    // create the writer from the file stream
                    writer = new System.IO.BinaryWriter(fileStream);

                    // read in file from the database one
                    // buffer at a time.  when the number
                    // of bytes read is zero then we know that we are done.
                    do
                    {
                        numberOfBytes = obj.GetBytes(2,
                                        startIndex, buffer, 0, bufferSize);
                        if (numberOfBytes == 0)
                        {
                            break;
                        }
                        writer.Write(buffer, 0, (int)numberOfBytes);
                        startIndex += numberOfBytes;
                    } while (true);
                    writer.Flush();

                    username = obj.GetString(3);
                    numofplays = obj.GetInt32(4);
                    
                    DisplayASong(i, title, username, numofplays);
                    i++;
                }
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            DisplaySongs();

        }
    }
}