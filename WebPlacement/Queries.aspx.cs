using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebPlacement
{
    public partial class Queries : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText= "insert into enquiry values(@name,@email,@contact,@enquirytitle,@enq_desc)";
            cmd.Parameters.AddWithValue("@name",txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@contact", txtcontact.Text);
            cmd.Parameters.AddWithValue("@enquirytitle", txttitle.Text);
            cmd.Parameters.AddWithValue("@enq_desc", txtquery.Text);
            int f;

            f = cmd.ExecuteNonQuery();

            if (f > 0)
            {
                txtname.Text = " ";
                txtemail.Text = " ";
                txtcontact.Text = " ";
                txttitle.Text = " ";
                txtquery.Text = " ";
                lblmsg.Visible = true;
                lblmsg.Text = "Inserted sucessfully";
            }
            cmd.Dispose();
            cn.Close();
            
        }
    }
}