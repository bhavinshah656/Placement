using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebPlacement
{
    public partial class Queriesdisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string cid = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
           // DataListItem item = DataList1.SelectedItem;
            //string name = ((Label)item.FindControl("lblmsg")).Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button cbtn = (Button)sender;
            
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            LinkButton cbtn = (LinkButton)sender;
            DataListItem item = (DataListItem)cbtn.NamingContainer;
            int index = item.ItemIndex;
            Label cid = DataList1.Items[index].FindControl("emailLabel") as Label;
            string emailid = Convert.ToString(cid.Text);
            Session["sendemailid"] = emailid;
            Response.Redirect("QueryRply.aspx");
        }
    }
}