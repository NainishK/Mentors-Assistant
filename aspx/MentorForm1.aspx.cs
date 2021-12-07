using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_MentorForm1 : System.Web.UI.Page
{
    int i;
    SqlConnection con;

    string[] Reg = new string[20];
    string[] Name = new string[20];

    protected void Page_Load(object sender, EventArgs e)
    {
        i = 0;
        using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString))
        {
            string query = "select *from tblMentor1";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            using(SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    Reg[i] = reader["RegNo"].ToString();
                    Name[i] = reader["NameOfStudent"].ToString();
                    i++;
                }
            }
        }

        reg1.Value = Reg[0];    name1.Value = Name[0];
        reg2.Value = Reg[1]; name2.Value = Name[1];
        reg3.Value = Reg[2]; name3.Value = Name[2];
        reg4.Value = Reg[3]; name4.Value = Name[3];
        reg5.Value = Reg[4]; name5.Value = Name[4];
        reg6.Value = Reg[5]; name6.Value = Name[5];
        reg7.Value = Reg[6]; name7.Value = Name[6];
        reg8.Value = Reg[7]; name8.Value = Name[7];
        reg9.Value = Reg[8]; name9.Value = Name[8];
        reg10.Value = Reg[9]; name10.Value = Name[9];
        reg11.Value = Reg[10]; name11.Value = Name[10];
        reg12.Value = Reg[11]; name12.Value = Name[11];
        reg13.Value = Reg[12]; name13.Value = Name[12];
        reg14.Value = Reg[13]; name14.Value = Name[13];
        reg15.Value = Reg[14]; name15.Value = Name[14];
        reg16.Value = Reg[15]; name16.Value = Name[15];
        reg17.Value = Reg[16]; name17.Value = Name[16];
        reg18.Value = Reg[17]; name18.Value = Name[17];
        reg19.Value = Reg[18]; name19.Value = Name[18];
        reg20.Value = Reg[19]; name20.Value = Name[19];

        con.Close();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        //since Value() is not supported to strings and are there only for "input type=text"
        Reg[0] = reg1.Value; Name[0] = name1.Value;
        Reg[1] = reg2.Value; Name[1] = name2.Value;
        Reg[2] = reg3.Value; Name[2] = name3.Value;
        Reg[3] = reg4.Value; Name[3] = name4.Value;
        Reg[4] = reg5.Value; Name[4] = name5.Value;
        Reg[5] = reg6.Value; Name[5] = name6.Value;
        Reg[6] = reg7.Value; Name[6] = name7.Value;
        Reg[7] = reg8.Value; Name[7] = name8.Value;
        Reg[8] = reg9.Value; Name[8] = name9.Value;
        Reg[9] = reg10.Value; Name[9] = name10.Value;
        Reg[10] = reg11.Value; Name[10] = name11.Value;
        Reg[11] = reg12.Value; Name[11] = name12.Value;
        Reg[12] = reg13.Value; Name[12] = name13.Value;
        Reg[13] = reg14.Value; Name[13] = name14.Value;
        Reg[14] = reg15.Value; Name[14] = name15.Value;
        Reg[15] = reg16.Value; Name[15] = name16.Value;
        Reg[16] = reg17.Value; Name[16] = name17.Value;
        Reg[17] = reg18.Value; Name[17] = name18.Value;
        Reg[18] = reg19.Value; Name[18] = name19.Value;
        Reg[19] = reg20.Value; Name[19] = name20.Value;

        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('"+Reg[0]+", "+reg2.Value+", "+Name[0]+", "+Name[1]+"');window.location ='MentorForm1.aspx';", true);

        /* con = new SqlConnection(ConfigurationManager.ConnectionStrings["connStrMentoringV1"].ConnectionString);
         con.Open();
         int flag = 0;
         for(i=0; i<20; i++)
         {
             if (Reg[i] != "" && Name[i] != "")
             {
                 flag++;
                 String query = "delete from tblMentor1 where RegNo='" + Reg[i] + "' or NameOfStudent='" + Name[i] + "'";
                 SqlCommand com = new SqlCommand(query, con);
                 com.ExecuteNonQuery();

                 query = "insert into tblMentor1 values('" + Reg[i] + "', '" + Name[i] + "')";
                 com = new SqlCommand(query, con);
                 com.ExecuteNonQuery();
             }
         }

         if(flag>0)
             ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('"+flag+" records saved successfully!');window.location ='MentorForm1.aspx';", true);
         else
             ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Nothing to save!');window.location ='MentorForm1.aspx';", true);*/
    }
}