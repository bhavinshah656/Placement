using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebPlacement
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Comapny Visited.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Placed Student.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Queries.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = "select * from student where emailid='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";

            DataTable dt = db.selprocess(str);
            if (dt.Rows.Count != 0)
            {
                
                    db.struemail = dt.Rows[0][3].ToString();
                    Session["studentid"] = dt.Rows[0][0].ToString();
                    Session["sscmarks"] = dt.Rows[0][10].ToString();
                    Session["hscmarks"] = dt.Rows[0][12].ToString();
                    Session["graduation"] = dt.Rows[0][14].ToString();
                    Session["Postgraduation"] = dt.Rows[0][17].ToString();
                    Session["emailid"] = TextBox1.Text;
                    Session["livebacklock"] = dt.Rows[0][19].ToString();
                    Session["deadbacklock"] = dt.Rows[0][20].ToString();

                    Response.Redirect("stud_profile.aspx");
                
            }
            else
            {
                lblmsg.Visible = true;
                lblmsg.Text = "Username/password is Incorrect...";
            }

        }
    

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_reg.aspx");
        }
    }
}