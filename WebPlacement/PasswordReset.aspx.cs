using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;




namespace WebPlacement
{
    public partial class PasswordReset : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select * from admin where username ='" + db.struemail + "' and password='" + txtold.Text + "'";

            DataTable dt = db.selprocess(str);
            if (dt.Rows.Count != 0)
            {

                string str1 = "update admin set password='" + txtnew.Text + "' where username='" + db.struemail + "' ";
                db.process(str1);
                lblmsg.Text = "Password Changed Successfully";
                txtold.Text = " ";
                txtnew.Text = " ";
                txtcnew.Text = " ";

            }
        }
    }
}