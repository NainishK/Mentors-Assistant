using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminForm1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] mentors = new string[12];
        int i, j=0, k=0;
        for(i=0; i<12; i++)
        {
            mentors[i] = Request.Form.Get("text"+(i+1));
            if(mentors[i].Equals("") || mentors[i].Equals(" "))
            {
                j++;
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
                con.Open();
                String query = "insert into tblAdmin1 values('"+mentors[i]+"')";
                SqlCommand com = new SqlCommand(query, con);
                com.ExecuteNonQuery();
                k++;
            }
        }

        if (j == 12)
            Response.Write("<h1 style=color:red>Nothing to save!</h1>");
        else if (k > 0)
            Response.Write("<h1 style=color:green>"+k + " mentors are added successfully!<h1>");
    }
}