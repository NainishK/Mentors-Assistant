using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_PersonalDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
         //try
         //{
        String EMail = (String)(Session["email"]);
        //Session["email"] = EMail;
        String Class = Request.Form.Get("class");
        String Branch = Request.Form.Get("branch");
        String Batch = Request.Form.Get("batch");
        String Roll = Request.Form.Get("roll");
        String Year = Request.Form.Get("year");
        String SName = Request.Form.Get("sname");
        String FName = Request.Form.Get("fname");
        String MName = Request.Form.Get("mname");
        String Father = Request.Form.Get("father");
        String FOccupation = Request.Form.Get("foccupation");
        String Mother = Request.Form.Get("mother");
        String MOccupation = Request.Form.Get("moccupation");
        String DoB = Request.Form.Get("dob");
        String[] dob = DoB.Split(' ');
        DoB = dob[0];
        String Blood = Request.Form.Get("blood");
        String RegNo = Request.Form.Get("reg");
        String Aadhar = Request.Form.Get("aadhar");
        String CAddress = Request.Form.Get("caddress");
        String PAddress = Request.Form.Get("paddress");
        String PContact = Request.Form.Get("pcontact");
        String SContact = Request.Form.Get("scontact");
        String Health = Request.Form.Get("health");
        String DocName = Request.Form.Get("docname");
        String DocContact = Request.Form.Get("doccontact");
        String Scheme = Request.Form.Get("scheme");

        if (Class.CompareTo("") != 0 && EMail.CompareTo("") != 0 && Scheme.CompareTo("") != 0 && Year.CompareTo("") != 0 && Batch.CompareTo("") != 0 && SName.CompareTo("") != 0 && FName.CompareTo("") != 0 && MName.CompareTo("") != 0)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
            con.Open();

            String query = "select count(*) from tblPersonalDetails where Email='" + EMail + "'";
            SqlCommand com = new SqlCommand(query, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp > 0)
            {
                if (Class.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Class='" + Class + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Branch.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Branch='" + Branch + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Batch.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Batch='" + Batch + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Scheme.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Scheme='" + Scheme + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Roll.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set RollNo='" + Roll + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Year.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Year='" + Year + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (SName.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Surname='" + SName + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (FName.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set FirstName='" + FName + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (MName.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set MiddleName='" + MName + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Father.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Father='" + Father + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (FOccupation.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set FOccupation='" + FOccupation + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Mother.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Mother='" + Mother + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (MOccupation.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set MOccupation='" + MOccupation + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (DoB.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set DoB='" + DoB + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Blood.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Blood='" + Blood + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (RegNo.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set RegNo='" + RegNo + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Aadhar.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Aadhar='" + Aadhar + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (CAddress.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set CAddress='" + CAddress + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (PAddress.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set PAddress='" + PAddress + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (PContact.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set PContact='" + PContact + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (SContact.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set SContact='" + SContact + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Health.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Health='" + Health + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (DocName.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set DocName='" + DocName + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (DocContact.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set DocContact='" + DocContact + "' where Email='" + EMail + "'";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                if (Batch.CompareTo("") != 0 && Year.CompareTo("") != 0)
                {
                    query = "update tblPersonalDetails set Mentor=(select Mentor from tblAdmin2 where Batch='" + Batch + "' and Year='" + Year + "')";
                    com = new SqlCommand(query, con);
                    com.ExecuteNonQuery();
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved Successfully!');", true);
            }

            else
            {
                query = "select Mentor from tblAdmin2 where Batch='" + Batch + "' and Year='" + Year + "'";
                com = new SqlCommand(query, con);
                SqlDataReader reader = com.ExecuteReader();

                reader.Read();
                query = "insert into tblPersonalDetails values('" + EMail + "','" + Class + "','" + Branch + "','" + Batch + "','" + Scheme + "','" + Roll + "','" + Year + "','" + SName + "','" + FName + "','" + MName + "','" + Father + "','" + FOccupation + "','" + Mother + "','" + MOccupation + "','" + DoB + "','" + Blood + "','" + RegNo + "','" + Aadhar + "','" + CAddress + "','" + PAddress + "','" + PContact + "','" + SContact + "','" + Health + "','" + DocName + "','" + DocContact + "','" + reader.GetString(0) + "')";
                reader.Close();
                com = new SqlCommand(query, con);
                com.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Saved Successfully!');", true);
                con.Close();
            }
        }
        else
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Name, class, year, batch and syllabus scheme cannot be blank!');window.location ='PersonalDetails.aspx';", true);
        /* }
         catch(Exception exc)
         {
             ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Session Expired! Please login first!');window.location ='../html/MyLogin.html';", true);
         }*/
    }
}