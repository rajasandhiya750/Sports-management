using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class editstud : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand com;
    OleDbDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\SRIPRO1\\sportspro.mdb");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("select * from sregister where regno='" + TextBox1.Text + "'", con);
        dr = com.ExecuteReader();
        if (dr.Read())
        {
            TextBox2.Text = dr[1].ToString();
            TextBox3.Text = dr[2].ToString();
            TextBox4.Text = dr[3].ToString();
            TextBox5.Text = dr[4].ToString();
            TextBox6.Text = dr[5].ToString();
            TextBox7.Text = dr[6].ToString();
            TextBox8.Text = dr[7].ToString();
            TextBox9.Text = dr[8].ToString();
            TextBox10.Text = dr[9].ToString();
            TextBox11.Text = dr[10].ToString();
        }
        else
        {
            Label2.Text = "No Record Found";
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("update sregister set sname='" + TextBox2.Text + "', dept='" + TextBox3.Text + "', gender='" + TextBox4.Text + "', locat='" + TextBox5.Text + "', sports='" + TextBox6.Text + "', mail='" + TextBox7.Text + "', mobile='" + TextBox8.Text + "', perform='" + TextBox9.Text + "', comments='" + TextBox10.Text + "', grade='" + TextBox11.Text + "' where regno='" + TextBox1.Text + "'", con);
        com.ExecuteNonQuery();
        Label1.Text = "Student Record Updated";
        con.Close();
    }
}