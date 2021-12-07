using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_AttendanceRecords : System.Web.UI.Page
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
            String[] month = new String[24];
            String[] percent = new String[24];

            int i, flag = 0, k = 0, j;
            for (i = 0; i < 8; i++)
            {
                sem[i] = "Sem" + (i + 1);
                for (j = 0; j < 3; j++)
                {
                    if (i % 2 == 0)
                    {
                        month[i * 3] = "July";
                        month[(i * 3) + 1] = "August";
                        month[(i * 3) + 2] = "September";
                    }
                    else
                    {
                        month[i * 3] = "January";
                        month[(i * 3) + 1] = "February";
                        month[(i * 3) + 2] = "March";
                    }
                    percent[k] = Request.Form.Get("percentage" + (i + 1) + "" + (j + 1));
                    k++;
                }
            }

            int cnt = 0;
            j = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();
            for (i = 0; i < 24; i++)
            {
                if (EMail.CompareTo("") != 0 && percent[i].CompareTo("") != 0)
                {
                    flag = 1;
                    /*String query = "delete from tblAttendance where Email='" + EMail + "' and Sem='"+sem[j]+"' and Month='"+month[i]+"'";
                    SqlCommand com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();*/

                    String query = "select count(*) from tblAttendance where Email='" + EMail + "' and Sem='" + sem[j] + "' and Month='" + month[i] + "'";
                    SqlCommand com = new SqlCommand(query, con);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp > 0)
                    {
                        if (percent[i].CompareTo("") != 0)
                        {
                            query = "update tblAttendance set Percentage='" + percent[i] + "' where Email='" + EMail + "' and Sem='" + sem[j] + "' and Month='" + month[i] + "'";
                            com = new SqlCommand(query, con);
                            com.ExecuteNonQuery();
                        }
                    }
                    else
                    {
                        query = "insert into tblAttendance values('" + EMail + "','" + sem[j] + "','" + month[i] + "','" + percent[i] + "')";
                        com = new SqlCommand(query, con);
                        com.ExecuteNonQuery();
                    }

                    cnt++;
                }
                else if (i == 23)
                {
                    con.Close();
                }

                if ((i + 1) % 3 == 0)
                    j++;
            }

            if (flag == 0)
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Please enter your attendance percentage!');", true);
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved successfully!');", true);
                con.Close();
            }
       }
        catch (Exception exc)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Session Expired! Please login first!');window.location ='../html/MyLogin.html';", true);
        }
    }
}
