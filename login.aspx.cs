using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand com;
    OleDbDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\SRIPRO1\\sportspro.mdb");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("Select * from loguser where uname='" + TextBox1.Text + "' and pword='" + TextBox2.Text + "'", con);
        dr = com.ExecuteReader();
        if (!dr.Read())
        {
            Label1.Text = "Invalid Login Credentials";
        }
        else
        {
            if (TextBox1.Text == "Admin")
            {
                Response.Redirect("AdmHome.aspx");
            }
            else
            {
                Response.Redirect("Studhome.aspx");
            }
        }
        con.Close();
    }
}