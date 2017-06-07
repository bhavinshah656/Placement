using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlacement
{
    public partial class stud_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["emailid"]==null )
            {
                Response.Redirect("Home.aspx");
            }

            if (!IsPostBack)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM [student] where emailid='" + Session["emailid"].ToString() + "'";
                FormView1.DataBind();

            }
            string str = "select * from student where emailid='" + db.struemail + "'";
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void FormView1_PageIndexChanging1(object sender, FormViewPageEventArgs e)
        {

        }

        protected void EditButton_Click(object sender, EventArgs e)
        {

        }
    }
}    