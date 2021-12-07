using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;

public partial class MentoringLatest_MentoringLatest_aspx_ViewPersonalDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            //Populating a DataTable from database.
            DataTable dt = this.GetData();

            //Building an HTML string.
            StringBuilder html = new StringBuilder();

            //Table start.
            html.Append("<table border = '1' class='mystyle'>");

            //Building the Header column.

            foreach (DataColumn column in dt.Columns)
            {
                html.Append("<tr>");
                html.Append("<th>");
                html.Append(column.ColumnName);
                html.Append("</th>");

                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<td>");
                    html.Append(row[column.ColumnName]);
                    html.Append("</td>");
                }

                html.Append("</tr>");
            }

            //Table end.
            html.Append("</table>");

            //Append the HTML string to Placeholder.
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
        }
    }

    private DataTable GetData()
    {
        String EMail = (String)(Session["email"]);
        string constr = ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString;
        SqlConnection con = new SqlConnection(constr);
        con.Open();

        String query = "select count(*) from tblAdmin2 as m, tblPersonalDetails as p where m.Year=p.Year and m.Batch=p.Batch and Email='" + EMail + "'";
        SqlCommand com = new SqlCommand(query, con);

        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

        if (temp > 0)
        {
            SqlCommand cmd = new SqlCommand("SELECT *FROM tblPersonalDetails WHERE Email='" + EMail + "'", con);
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    return dt;
                }
            }
        }
        else
        {
            SqlCommand cmd = new SqlCommand("SELECT Email, Class, Branch, Batch, Scheme, RollNo, Year, Surname, FirstName, MiddleName, Father, FOccupation, Mother, MOccupation, DoB, Blood, RegNo, Aadhar, CAddress, PAddress, PContact, SContact, Health, DocName, DocContact FROM tblPersonalDetails where Email='" + EMail + "'", con);

            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataTable dt = new DataTable())
                {
                    sda.Fill(dt);
                    return dt;
                }
            }

        }
        
    }
}