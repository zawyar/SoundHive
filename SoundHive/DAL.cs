using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SoundHive
{
    public class DAL
    {
        //Login and Registration of User
        public SqlConnection conn;
        public DAL()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            conn.Open();
        }
        public SqlCommand PrepareLoginUser(string email, string password)
        {

            string query = "loginUser";
            SqlCommand command = new SqlCommand(query, conn);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@emailORusername", email);
            command.Parameters.AddWithValue("@password", password);
            command.Parameters.Add("@result", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;

            return command;

        }
        public bool RegisterUser(string username, string email, DateTime DOB, string password)
        {

            string query = "execute registerUser @email=@eml,@username=@usrn,@DOB=@date,@password=@pwd,@result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@usrn", username);
            command.Parameters.AddWithValue("@eml", email);
            command.Parameters.AddWithValue("@date", DOB);
            command.Parameters.AddWithValue("@pwd", password);
            command.Parameters.Add("@output", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;


            try
            {
                command.ExecuteNonQuery();
                if (Convert.ToInt32(command.Parameters["@output"].Value) == -1)
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while registering user: " + ex.Message);

                return false;


            }
            return true;

        }
        public bool getNewUserCount(ref int count) {

            string query = "select count(*) from Users";

            SqlCommand command = new SqlCommand(query, conn);

            try
            {
                count = Convert.ToInt32(command.ExecuteScalar());

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while getting count of users: " + ex.Message);

                return false;
            }
            return true;


        }

        public SqlDataReader AllSongs()
        {

            string query = "Select S.SongId, S.Title,S.Song, S.Username, S.NumberOfPlays from Songs as S";
            SqlCommand command = new SqlCommand(query, conn);


 
            try
            {
                SqlDataReader dr = command.ExecuteReader();
               
                    return dr;
                

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while displaying Songs: " + ex.Message);

                return null;


            }


        }

        public bool SearchSong(string title, ref int numplays, ref string artist)
        {
            //should be arrays because more than 1 search result

            //only trying to doing by song title rn, not search results of songs for an artist

            string query = "execute SearchSong @title=@name,@NumOfPlays= @plays OUTPUT, @artist= @user OUTPUT,@result= @output OUTPUT ";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@name", title);
 
            command.Parameters.Add("@output", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;
            command.Parameters.Add("@plays", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;
            command.Parameters.Add("@user", System.Data.SqlDbType.VarChar).Direction = System.Data.ParameterDirection.Output;

            try
            {
                command.ExecuteNonQuery();
                if (Convert.ToInt32(command.Parameters["@output"].Value) == -1)
                {
                    return false;
                }
                else
                {
                    numplays = Convert.ToInt32(command.Parameters["@plays"].Value);
                    artist = Convert.ToString(command.Parameters["@user"].Value);
                }

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while searching song: " + ex.Message);

                return false;


            }
            return true;

        }
        public byte[] getAlbumImageFromId(int id)
        {
            byte[] image=null;
            string query = "execute getAlbumImgById @alsBumId=@id";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@id", id);

            try
            {
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();
                image =(byte[]) reader.GetValue(0);
               
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while searching image: " + ex.Message);

                


            }
            return image;

        }
        public byte[] getGenreImageFromId(int id)
        {
            byte[] image = null;
            string query = "execute getGenreImgById @genreID=@id";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@id", id);

            try
            {
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();
                image = (byte[])reader.GetValue(0);

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while searching image: " + ex.Message);




            }
            return image;

        }
        public byte[] getSongFromId(int id)
        {
            byte[] song = null;
            string query = "execute getSongById @SongId=@id";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@id", id);

            try
            {
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();
                song = (byte[])reader.GetValue(0);


            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while searching song: " + ex.Message);




            }
            return song;

        }

        ~DAL()
        {
            
        }
        
    }
}