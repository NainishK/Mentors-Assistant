using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class aspx_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Change_Pswd(object sender, EventArgs e)
    {
        try
        {
            String EMail = txtEmail.Text;
            String Password = txtPswd.Text;
            String NPswd = txtNPswd.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();

            String query = "select count(*) from tblSignUp where Email='" + EMail + "' and Password='" + Password + "'";
            SqlCommand com = new SqlCommand(query, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp > 0)
            {
                query = "update tblSignUp set Password='" + NPswd + "' where Email='" + EMail + "'";
                com = new SqlCommand(query, con);
                com.ExecuteNonQuery();

                lblMessage.ForeColor = Color.Green;
                lblMessage.Text = "Password changed successfully!";
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "Invalid email or old password!";
            }


            con.Close();

        }
        catch (Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Error! Please provide all the details!');window.location='../html/signup.html';", true);
        }
    }
}