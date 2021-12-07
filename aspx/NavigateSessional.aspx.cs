using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_NavigateSessional : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String EMail = (String)(Session["email"]);

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
        con.Open();
        String query = "select count(*) from tblPersonalDetails where Email='" + EMail + "'";
        SqlCommand com = new SqlCommand(query, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

        if (temp > 0)
        {
            query = "select Scheme from tblPersonalDetails where Email='" + EMail + "'";
            com = new SqlCommand(query, con);
            SqlDataReader reader = com.ExecuteReader();

            reader.Read();
            if (reader.GetString(0).CompareTo("cbsgs") == 0)
            {
                Response.Redirect("SessionalRecords.aspx");
            }
            else if (reader.GetString(0).CompareTo("cbcgs") == 0)
            {
                Response.Redirect("NewSessionalRecords.aspx");
            }
            con.Close();
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please select your syllabus scheme in personal details!');window.location='PersonalDetails.aspx';", true);
        }
    }
}