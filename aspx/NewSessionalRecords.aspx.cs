using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_SessionalRecords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String EMail = (String)(Session["email"]);
            String[] sem = new String[4];
            String[] subject = new String[24];
            String[] test1 = new String[24];
            String[] test2 = new String[24];

            int i, flag = 0, k = 0, j;
            for (i = 0; i < 4; i++)
            {
                sem[i] = "Sem" + (i + 1);
                for (j = 0; j < 6; j++)
                {
                    subject[k] = Request.Form.Get("sub" + (i + 1) + "" + (j + 1));
                    test1[k] = Request.Form.Get("sub" + (i + 1) + "" + (j + 1) + "test1");
                    test2[k] = Request.Form.Get("sub" + (i + 1) + "" + (j + 1) + "test2");
                    k++;
                }
            }

            j = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();
            for (i = 0; i < 24; i++)
            {
                if (EMail.CompareTo("")!=0 && (test1[i].CompareTo("") != 0 || test2[i].CompareTo("") != 0))
                {
                    flag = 1;
                    String query = "delete from tblSessional where Email='" + EMail + "' and Subject='"+subject[i]+"'";
                    SqlCommand com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();

                    query = "insert into tblSessional values('" + EMail + "','" + sem[j] + "','" + subject[i] + "','" + test1[i] + "','" + test2[i] + "')";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                else if (i == 23)
                {
                    con.Close();
                }

                if ((i + 1) % 6 == 0)
                    j++;
            }

            if (flag == 0)
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter your marks!');", true);
            else
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved successfully!');", true);
        }
        catch (Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Session Expired! Please login first!');window.location ='../html/MyLogin.html';", true);
        }
    }
}