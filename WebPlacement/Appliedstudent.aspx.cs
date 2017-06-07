using System;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net.Mail;
using System.Net.Configuration;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html;
using iTextSharp.text.html.simpleparser;
using System.Text;
using System.Drawing.Text;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.UI.HtmlControls;

namespace WebPlacement
{
    public partial class Appliedstudent : System.Web.UI.Page
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select s.studentid,s.studname,s.phoneno,s.emailid,s.course,s.sscmarks,s.hscmarks,s.graduation,s.postgraduation from student s ,company c ,applied_stud ap where s.studentid=ap.studentid and c.companyid=ap.companyid and c.companyid= '" + DropDownList1.SelectedValue + "'", cn);
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            Adpt.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            int sid = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            int cmpname = int.Parse(DropDownList1.SelectedValue.ToString());
            SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
            string sql = "INSERT INTO  placed_stud VALUES (@Val1,@Val2)";
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@Val1", sid);
                cmd.Parameters.AddWithValue("@Val2", cmpname);

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
            finally
            {
                cn.Close();
            }
            cn.Open();
            string sql1 = "update student set loginflag = 1 where studentid='" + sid + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, cn);
            cmd1.CommandType = CommandType.Text;
            cmd1.ExecuteNonQuery();
            cn.Close();
            cn.Open();
            SendActivationEmail(sid);


        }
        private void SendActivationEmail(int userId)
        {

            string str = "select * from student where studentid='" + userId + "'";
            string cmpname = DropDownList1.SelectedItem.ToString();
            DataTable dt = db.selprocess(str);
            if (dt.Rows.Count != 0)
            {
                db.struemail = dt.Rows[0][3].ToString();
                db.name = dt.Rows[0][1].ToString();
            }
            string activationCode = Guid.NewGuid().ToString();
            // (MailMessage mm = new MailMessage("sender@gmail.com",db.struemail))
            //{
            MailMessage mm = new MailMessage();
            mm.From = new MailAddress("bhavinshah656@gmail.com");
            mm.To.Add(db.struemail);
            mm.Subject = "Selected Student";
            string body = "Hello " + db.name + ",";
            body += "<br /><br />You Have been Selected in " + cmpname + "";
            body += "<br />Congraluations.....";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            SmtpSection sobj = (SmtpSection)ConfigurationManager.GetSection("system.net/mailSettings/smtp");
            smtp.Host = sobj.Network.Host;
            smtp.Port = sobj.Network.Port;
            //NetworkCredential NetworkCred = new NetworkCredential("sender@gmail.com", "<password>");
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = new System.Net.NetworkCredential(sobj.Network.UserName, sobj.Network.Password);
            smtp.Send(mm);
        }//

        protected void Button2_Click(object sender, EventArgs e)
        {

            ExportGridToExcel();
        }

        private void ExportGridToExcel()
        {
            string applied = DropDownList1.SelectedItem.Text;
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Applied_Student_for_" + applied + "_" + DateTime.Now + ".xls";
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
         
    

    


   