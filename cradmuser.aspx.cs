using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class cradmuser : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand com;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\\SRIPRO1\\sportspro.mdb");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        com = new OleDbCommand("insert into loguser values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
        com.ExecuteNonQuery();
        Label1.Text = "New User Created";
        con.Close();
    }
}