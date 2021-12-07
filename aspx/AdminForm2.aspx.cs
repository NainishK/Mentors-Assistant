using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_AdminForm2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String EMail = (String)(Session["email"]);
            String selYear = Request.Form.Get("selYear");
            String selBatch = Request.Form.Get("selBatch");
            String selMentor = Request.Form.Get("selMentor");

            if (EMail.CompareTo("") == 0)
            {
                selYear = "";
                selBatch = "";
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();
            String query = "delete from tblAdmin2 where Year='" + selYear + "' and Batch='" + selBatch + "'";
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();

            query = "insert into tblAdmin2 values('" + selYear + "', '" + selBatch + "', '" + selMentor + "')";
            com = new SqlCommand(query, con);
            com.ExecuteNonQuery();

            /*Response.Write("<script>alert('" + selMentor + " is assigned as mentor to the " + selBatch + " batch of class " + selClass + "')</script>");
            Response.Redirect("../html/AdminForm2.html");*/

            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + selMentor + " is assigned as mentor to the " + selBatch + " batch of year " + selYear + "');window.location ='../html/AdminForm2.html';", true);

       }
        catch(Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Session Expired! Please login first!');window.location ='../html/MyLogin.html';", true);
        }
    }
}