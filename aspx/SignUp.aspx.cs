using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String EMail = Request.Form.Get("email");
            String Password = Request.Form.Get("pswd");
            String CPassword = Request.Form.Get("cpswd");
            String Category = Request.Form.Get("category");

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();
            if (Category.CompareTo("Student") == 0)
            {
                String query = "select count(*) from tblSignUp where Email='" + EMail + "'";
                SqlCommand com = new SqlCommand(query, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (temp > 0)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Error! User already exists with this email!');window.location='../html/signup.html';", true);
                }
                else
                {
                    query = "insert into tblSignUp values('" + EMail + "','" + Password + "','" + Category + "')";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration Successfull!');window.location='../html/signup.html';", true);
                }
            }
            else if (Category.CompareTo("Mentor") == 0)
            {
                String query = "select count(*) from tblAdmin2 where Mentor='" + EMail + "'";
                SqlCommand com = new SqlCommand(query, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (temp > 0)
                {
                    query = "insert into tblSignUp values('" + EMail + "','" + Password + "','" + Category + "')";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registration Successfull!');window.location='../html/MyLogin.html';", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your email is not registered! Please contact to your admin!');window.location='../html/signup.html';", true);
                }
            }
            con.Close();

        }
        catch(Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Error! Please provide all the details!');window.location='../html/signup.html';", true);
        }
    }
}