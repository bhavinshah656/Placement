using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Text;
using System.Drawing.Text;
using System.Drawing;
using System.Web.UI.HtmlControls;
using System.IO;

namespace WebPlacement
{
    public partial class PlacedStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
                string com = "select companyname,companyid from company ";
                SqlDataAdapter adpt = new SqlDataAdapter(com, cn);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataBind();
                DropDownList1.DataTextField = "companyname";
                DropDownList1.DataValueField = "companyid";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select s.studentid,s.studname,s.phoneno,s.emailid,s.course,s.sscmarks,s.hscmarks,s.graduation,s.postgraduation from student s ,company c ,placed_stud ap where s.studentid=ap.studentid and c.companyid=ap.companyid and c.companyid= '" + DropDownList1.SelectedValue + "'", cn);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }
        private void ExportGridToExcel()
        {
            string placed = DropDownList1.SelectedItem.Text;
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Placed_Student_in_"+ placed +"_"+ DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }
    }
}