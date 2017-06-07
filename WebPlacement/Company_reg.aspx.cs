using System; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebPlacement
{
    public partial class Company_reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
                string regdate=txtregdeadline.Text , drivedate=txtdrivedate.Text ;
              DateTime dt = DateTime.ParseExact(txtregdeadline.Text , "dd/MM/yyyy", null);
              DateTime dt1 = DateTime.ParseExact(txtdrivedate.Text , "dd/MM/yyyy", null);
            cn.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.Connection = cn;
                cmd1.CommandText = "insert into company values(@companyname,@package,@location,@companysite,@address,@cmpemail,@cmpno,@ssc_marks,@hsc,@graduation,@postgraduation,@livebacklock,@deadbacklock,@regdeadline,@drivedate,@drivetime,@venue,@processflow,@techincalskill)";
                cmd1.Parameters.AddWithValue("@companyname",txtcname.Text);
                cmd1.Parameters.AddWithValue("@package", txtpackage.Text );
                cmd1.Parameters.AddWithValue("@location", txtlocation.Text);
                cmd1.Parameters.AddWithValue("@companysite",txtcsite.Text );
                cmd1.Parameters.AddWithValue("@address", txtaddress.Text);
                cmd1.Parameters.AddWithValue("@cmpemail", txtcemail.Text);
                cmd1.Parameters.AddWithValue("@cmpno", txtcno.Text);
                cmd1.Parameters.AddWithValue("@ssc_marks", txtcssc.Text);
                cmd1.Parameters.AddWithValue("@hsc", txtchsc.Text );
                cmd1.Parameters.AddWithValue("@graduation", txtcgraduation.Text);
                cmd1.Parameters.AddWithValue("@postgraduation", txtcpost.Text);
                cmd1.Parameters.AddWithValue("@livebacklock", txtclive.Text );
                cmd1.Parameters.AddWithValue("@deadbacklock", txtcdead.Text);
                cmd1.Parameters.AddWithValue("@regdeadline", dt);
                cmd1.Parameters.AddWithValue("@drivedate", dt1 );
                cmd1.Parameters.AddWithValue("@drivetime", txtdrivetime.Text);
                cmd1.Parameters.AddWithValue("@venue", txtvenue.Text);
                cmd1.Parameters.AddWithValue("@processflow", txtprocess.Text);
                cmd1.Parameters.AddWithValue("@techincalskill", txtskills.Text);
               
                int f1;
                f1 = cmd1.ExecuteNonQuery();
                cmd1.Parameters.Clear();
                if (f1 > 0)
                {
                txtcname.Text = " ";
                txtpackage.Text = " ";
                txtlocation.Text = " ";
                txtcsite.Text = " ";
                txtaddress.Text = " ";
                txtcemail.Text = " ";
                txtcno.Text = " ";
                txtcssc.Text = " ";
                txtchsc.Text = " ";
                txtcgraduation.Text = " ";
                txtcpost.Text = " ";
                txtclive.Text = " ";
                txtcdead.Text = " ";
                txtregdeadline.Text  = " ";
                txtdrivedate.Text  = " ";
                txtdrivetime.Text = " ";
                txtvenue.Text = " ";
                txtprocess.Text = " ";
                txtskills.Text = " ";
                }
            lblmsg.Visible = true;
            lblmsg.Text = "Registered Successfully";
            cmd1.Dispose();
            cn.Close();
            



            }
        }
    }
    
