using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_MyLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String EMail = Request.Form.Get("email");
        String Password = Request.Form.Get("pswd");

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
        con.Open();
        String query = "select count(*) from tblSignUp where Email='" + EMail + "'";
        SqlCommand com = new SqlCommand(query, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        
        if (temp > 0)
        {
            query = "select Password, Category from tblSignUp where Email='" + EMail + "'";
            com = new SqlCommand(query, con);
            SqlDataReader reader = com.ExecuteReader();

            reader.Read();

            if (Password.CompareTo(reader.GetString(0)) == 0)
            {
                if (reader.GetString(1).CompareTo("Student") == 0)
                {
                    Session["email"] = EMail;
                    Response.Redirect("PersonalDetails.aspx");
                }
                else if(reader.GetString(1).CompareTo("Mentor") == 0)
                {
                    Session["email"] = EMail;
                    Response.Redirect("StudentsList.aspx");
                }
                else if(reader.GetString(1).CompareTo("Admin") == 0)
                {
                    Session["email"] = EMail;
                    Response.Redirect("../html/AdminForm2.html");
                }
            }
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "UnSuccessful", "alert('Wrong Email or Password!');window.location='../html/MyLogin.html';", true);
            reader.Close();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "UnSuccessful", "alert('Wrong Email or Password!');window.location='../html/MyLogin.html';", true);
        }
        con.Close();
    }

}