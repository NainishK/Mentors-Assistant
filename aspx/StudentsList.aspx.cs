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

public partial class aspx_StudentsList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            String EMail = (String)(Session["email"]);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();
            String query = "SELECT count(*) FROM tblPersonalDetails WHERE Year=(SELECT Year FROM tblAdmin2 WHERE Mentor='" + EMail + "') and Batch=(SELECT Batch FROM tblAdmin2 WHERE Mentor='" + EMail + "')";
            SqlCommand com = new SqlCommand(query, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp > 0)
            {

                //Populating a DataTable from database.
                DataTable dt = this.GetData();

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<table border = '1' class='mystyle'>");

                //Building the Header row.
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("</tr>");

                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
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
            else
                Response.Redirect("NoStudentsMsg.aspx");
        }
    }

    private DataTable GetData()
    {
        String EMail = (String)(Session["email"]);
        string constr = ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT Surname, FirstName, MiddleName FROM tblPersonalDetails WHERE Year=(SELECT Year FROM tblAdmin2 WHERE Mentor='" + EMail + "') and Batch=(SELECT Batch FROM tblAdmin2 WHERE Mentor='" + EMail + "')"))
            {
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
}