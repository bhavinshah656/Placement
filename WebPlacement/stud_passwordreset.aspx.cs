using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebPlacement
{
    public partial class stud_passwordreset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select * from student where emailid ='" + db.struemail + "' and password='" + txtold.Text + "'";

            DataTable dt = db.selprocess(str);
            if (dt.Rows.Count != 0)
            {

                string str1 = "update student set password='" + txtnew.Text + "' where emailid='" + db.struemail + "' ";
                db.process(str1);
                Label1.Text = "Password Changed Successfully";
                txtold.Text = " ";
                txtnew.Text = " ";
                txtcnew.Text = " ";
                
            }
        }
    }
}