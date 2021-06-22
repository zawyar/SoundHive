using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.IO;
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

        public SqlDataReader AllGenres()
        {

            string query = "Select G.GenreName, G.GenreId from Genres as G";
            SqlCommand command = new SqlCommand(query, conn);
  


            try
            {
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    return dr;
                }
                else
                {
                    return null;
                }



                //dr.Close();

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while displaying Genres: " + ex.Message);

                return null;


            }


        }

        public SqlDataReader AllAlbums()
        {

            string query = "Select A.Title, A.AlbumId, A.Username from Albums as A";
            SqlCommand command = new SqlCommand(query, conn);



            try
            {
                SqlDataReader dr = command.ExecuteReader();
                if (dr.HasRows)
                {
                    return dr;
                }
                else
                {
                    return null;
                }



                //dr.Close();

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while displaying Albums: " + ex.Message);

                return null;


            }


        }
        public SqlDataReader GetAlbumById(int albumId)
        {

            string query = "execute getAlbumDetailsById @alsBumId=@id";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@id", albumId);
            SqlDataReader reader = null;
            try
            {
                reader = command.ExecuteReader();
                
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while searching image: " + ex.Message);




            }
            return reader;


        }
        public SqlDataReader GetAlbumSongsById(int albumId)
        {

            string query = "execute getAlbumSongDetailsById @alsBumId=@id";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@id", albumId);
            SqlDataReader reader = null;
            try
            {
                reader = command.ExecuteReader();

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while searching image: " + ex.Message);




            }
            return reader;


        }

        public SqlDataReader AllArtists()
        {

            string query = "Select U.Username from Users as U";
            SqlCommand command = new SqlCommand(query, conn);



            try
            {
                SqlDataReader dr = command.ExecuteReader();
               
                    return dr;
                

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error while displaying Artists: " + ex.Message);

                return null;


            }


        }


        public bool EditProfile(string usrn, string username, string email, DateTime DOB, string password)
        {
            string query = "execute EditProfile @usern =@usrid,@email = @eml,@username = @usrn,@DOB = @date, @password = @pwd,@result= @output OUTPUT";
            //string query = "execute EditProfile @email=@eml,@username=@usrn,@DOB=@date,@password=@pwd,@result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@usrid", usrn);
            command.Parameters.AddWithValue("@usrn", username);
            command.Parameters.AddWithValue("@eml", email);
            command.Parameters.AddWithValue("@date", DOB.ToString("yyyy/MM/dd"));
            System.Diagnostics.Debug.WriteLine(DOB.ToString("yyyy/MM/dd"));
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
                System.Diagnostics.Debug.WriteLine("Error while editing user: " + ex.Message);

                return false;


            }
            return true;

        }

        public bool DeleteAccount(string usrn)
        {
            string query = "execute DeleteUser @usern =@usrid, @result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@usrid", usrn);
            
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
                System.Diagnostics.Debug.WriteLine("Error while deleting user: " + ex.Message);

                return false;


            }
            return true;

        }
        public bool DeleteGenre(int genreid)
        {
            string query = "execute DeleteGenre @GenreId =@gid, @result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@gid", genreid);

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
                System.Diagnostics.Debug.WriteLine("Error while deleting genre: " + ex.Message);

                return false;


            }
            return true;

        }

        public bool AddGenre(string genre)
        {
            string query = "execute AddGenre @GenreName =@gname, @result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@gname", genre);

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
                System.Diagnostics.Debug.WriteLine("Error while adding genre: " + ex.Message);

                return false;


            }
            return true;

        }

        public bool DeleteSong(int id)
        {
            string query = "execute DeleteSong @songId =@id, @result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@id", id);

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
                System.Diagnostics.Debug.WriteLine("Error while deleting song: " + ex.Message);

                return false;


            }
            return true;

        }

        public bool DeleteAlbum(int AlbumId)
        {
            string query = "execute DeleteAlbum @AlbumId =@id, @result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@id", AlbumId);

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
                System.Diagnostics.Debug.WriteLine("Error while deleting song: " + ex.Message);

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

        public byte[] getArtistImageFromUsername(string username)
        {
            byte[] image = null;
            string query = "execute getArtistImgByUsername @usern=@name";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@name", username);

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