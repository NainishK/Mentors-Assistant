using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_CurricularActivities : System.Web.UI.Page
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
            String[] coCurricular = new String[40];
            String[] extraCurricular = new String[40];

            int i, flag = 0, k = 0, j;
            for (i = 0; i < 8; i++)
            {
                sem[i] = "Sem" + (i + 1);
                for (j = 0; j < 5; j++)
                {
                    coCurricular[k] = Request.Form.Get("co" + (i + 1) + "" + (j + 1));
                    extraCurricular[k] = Request.Form.Get("extra" + (i + 1) + "" + (j + 1));
                    k++;
                }
            }

            j = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();
            for (i = 0; i < 40; i++)
            {
                if (EMail.CompareTo("") != 0 && coCurricular[i].CompareTo("") != 0 || extraCurricular[i].CompareTo("") != 0)
                {
                    flag = 1;

                    String query = "insert into tblCurricular values('" + EMail + "','" + sem[j] + "','" + coCurricular[i] + "','" + extraCurricular[i] + "')";
                    SqlCommand com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                else if (i == 39)
                {
                    con.Close();
                }

                if ((i + 1) % 5 == 0)
                    j++;
            }

            if (flag == 0)
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter activities!');", true);
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved successfully!');", true);

        }
        catch (Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Session Expired! Please login first!');window.location ='../html/MyLogin.html';", true);
        }
    }
}