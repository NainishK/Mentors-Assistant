using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_MentorForm2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String EMail = (String)(Session["email"]);
            String regNo = Request.Form.Get("regNo");
            String sName = Request.Form.Get("sName");

            if (EMail.CompareTo("") == 0)
                regNo = "";

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();
            String query = "delete from tblMentor1 where RegNo='" + regNo + "'";
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();

            query = "insert into tblMentor1 values('" + regNo + "', '" + sName + "')";
            com = new SqlCommand(query, con);
            com.ExecuteNonQuery();

            /*Response.Write("<script>alert('" + selMentor + " is assigned as mentor to the " + selBatch + " batch of class " + selClass + "')</script>");
            Response.Redirect("../html/AdminForm2.html");*/

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + sName + " with Reg. No. " + regNo + " is added to your list!');window.location ='../html/MentorForm2.html';", true);
        }
        catch(Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Session Expired! Please login first!');window.location ='../html/MyLogin.html';", true);
        }
    }
}