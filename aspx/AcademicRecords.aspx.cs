using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_AcademicRecords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String EMail = (String)(Session["email"]);
            String[] sem = new String[8];
            String[] result = new String[8];
            String[] noOfKTs = new String[8];
            String[] KtSubjects = new String[8];
            String[] sgpi = new String[8];
            int i, flag = 0;

            for (i = 0; i < 8; i++)
            {
                sem[i] = "Sem" + (i + 1);
                result[i] = Request.Form.Get("result" + (i + 1));
                noOfKTs[i] = Request.Form.Get("noOfHeads" + (i + 1));
                KtSubjects[i] = Request.Form.Get("ktSubjects" + (i + 1));
                sgpi[i] = Request.Form.Get("sgpi" + (i + 1));
            }

            for (i = 0; i < 8; i++)
            {
                if (EMail.CompareTo("") != 0 && sgpi[i].CompareTo("") != 0)
                {
                    flag = 1;
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
                    con.Open();

                    /*String query = "delete from tblAcademicRecords where Email='" + EMail + "' and Sem='"+sem[i]+"'";
                    SqlCommand com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();*/

                    String query = "select count(*) from tblAcademicRecords where Email='" + EMail + "' and Sem='" + sem[i] + "'";
                    SqlCommand com = new SqlCommand(query, con);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp > 0)
                    {
                        if(result[i].CompareTo("")!=0)
                        {
                            query = "update tblAcademicRecords set Result='" + result[i] + "' where Email='" + EMail + "' and Sem='" + sem[i] + "'";
                            com = new SqlCommand(query, con);
                            com.ExecuteNonQuery();
                        }
                        if (noOfKTs[i].CompareTo("") != 0)
                        {
                            query = "update tblAcademicRecords set NoOfKTs='" + noOfKTs[i] + "' where Email='" + EMail + "' and Sem='" + sem[i] + "'";
                            com = new SqlCommand(query, con);
                            com.ExecuteNonQuery();
                        }
                        if (KtSubjects[i].CompareTo("") != 0)
                        {
                            query = "update tblAcademicRecords set KTSubjects='" + KtSubjects[i] + "' where Email='" + EMail + "' and Sem='" + sem[i] + "'";
                            com = new SqlCommand(query, con);
                            com.ExecuteNonQuery();
                        }
                        if (sgpi[i].CompareTo("") != 0)
                        {
                            query = "update tblAcademicRecords set SGPI='" + sgpi[i] + "' where Email='" + EMail + "' and Sem='" + sem[i] + "'";
                            com = new SqlCommand(query, con);
                            com.ExecuteNonQuery();
                        }
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved Successfully!');", true);
                    }
                    else
                    {
                        query = "insert into tblAcademicRecords values('" + EMail + "','" + sem[i] + "','" + result[i] + "','" + noOfKTs[i] + "','" + KtSubjects[i] + "','" + sgpi[i] + "')";
                        com = new SqlCommand(query, con);
                        com.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved Successfully!');", true);

                        con.Close();
                    }
                }
            }

            if (flag == 0)
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter your SGPI/Percentage!');", true);
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved successfully!');", true);
        }
        catch (Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Session Expired! Please login first!');window.location ='../html/MyLogin.html';", true);
        }
    }
}
