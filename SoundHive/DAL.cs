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

            string query = "Select S.Title, S.Username, S.NumberOfPlays from Songs as S";
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

            string query = "Select A.Title from Albums as A";
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

        public SqlDataReader AllArtists()
        {

            string query = "Select U.Username from Users as U";
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

        ~DAL()
        {

        }
        
    }
}