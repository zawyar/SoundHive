using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoundHive
{
	public partial class Login1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		
		protected void SignIn_Click(object sender, EventArgs e)
		{
			try
			{
				DAL handler = new DAL();
				SqlCommand loginCommand = handler.PrepareLoginUser(email.Text.Trim(),password.Value);
				loginCommand.ExecuteScalar();
				int output = Convert.ToInt32(loginCommand.Parameters["@result"].Value);
				string username;
				int type;
				
				if (output==0)
				{
					ErrorLabel.InnerText = "INVALID CREDENTIALS";
					return;
				}else if (output==1)
				{
					ErrorLabel.InnerText = "INVALID PASSWORD";
					return;
				}
				else
				{
					SqlDataReader reader = loginCommand.ExecuteReader();
					reader.Read();
					username=reader["Username"].ToString();
					type = Convert.ToInt32(reader["role_id"].ToString());
					reader.Close();

				}
				Session["username"] = username;
				if (type == 1)
				{
					Response.Redirect("AdminDataOverview.aspx");
				}
				else if (type == 2)
				{
					Response.Redirect("Dashboard.aspx");
				}
				

			}catch(Exception ex)
			{
				System.Diagnostics.Debug.WriteLine("Error while signing in: "+ex.Message);
			}
			
		}
	}
}