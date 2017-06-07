using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlacement
{
    public partial class Student1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["emailid"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = Session["emailid"].ToString();

            }
        }


        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("stud_passwordreset.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("stud_Profile.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Apply_cmpy.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session["emailid"] = null;
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Buffer = true;
            Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
            Response.Expires = -1000;
            Response.CacheControl = "no-cache";
            Response.Redirect("Home.aspx",true);
        }
    }
}