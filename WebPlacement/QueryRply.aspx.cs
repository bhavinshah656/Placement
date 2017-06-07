using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Configuration;
using System.Configuration;

namespace WebPlacement
{
    public partial class QueryRply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sendemail =(string)Session["sendemailid"];
            txtemail.Text = sendemail;
         
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string sendemail = (string)Session["sendemailid"];
            
            SendActivationEmail(sendemail);
        }
        private void SendActivationEmail(string userId)
        {


            string activationCode = Guid.NewGuid().ToString();
            // (MailMessage mm = new MailMessage("sender@gmail.com",db.struemail))
            //{
            MailMessage mm = new MailMessage();
            mm.From = new MailAddress("bhavinshah656@gmail.com");
            mm.To.Add(userId);
            mm.Subject = txtsubject.Text;
            string body = txtrply.Text;
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
        } }
}