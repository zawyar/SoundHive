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
        public SqlConnection conn;
        public DAL()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            conn.Open();
        }
        public SqlCommand PrepareLoginUser(string email, string password)
        {

            string query = "EXECUTE loginUser @emailORusername=@Email,@password=@pswd,@result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@Email", email);
            command.Parameters.AddWithValue("@pswd", password);
            command.Parameters.Add("@output", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.Output;
            
            return command;

        }
        public bool RegisterUser(string username, string email, DateTime DOB, string password)
        {

            string query = "execute registerUser @email=@eml,@username=@usrn,@DOB=@date,@password=@pwd,@result= @output OUTPUT";
            SqlCommand command = new SqlCommand(query, conn);
            command.Parameters.AddWithValue("@usr", username);
            command.Parameters.AddWithValue("@eml", email);
            command.Parameters.AddWithValue("@date", DOB);
            command.Parameters.AddWithValue("@pwd", password);
            command.Parameters.Add("@output",System.Data.SqlDbType.Int).Direction=System.Data.ParameterDirection.Output;


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
        ~DAL()
        {
            conn.Close();
        }
        
    }
}