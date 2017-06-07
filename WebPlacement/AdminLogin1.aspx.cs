using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebPlacement
{    
    
    public partial class AdminLogin1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=W27109601XVTY\\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["adminhome"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select * from admin where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        
                DataTable dt = db.selprocess(str);
                if (dt.Rows.Count != 0)
                {
                    db.struemail = dt.Rows[0][1].ToString();
                    Session["adminname"] = TextBox1.Text;

                    Response.Redirect("adminhome.aspx");
                }
                else
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "Username/password is Incorrect...";
                }
            
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
        
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
        
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
        
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {

        }
    }
}