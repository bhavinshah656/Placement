using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebPlacement
{
    public partial class Student_reg : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string bdate = " ";
            string gen = " ";
            string classes=" ";
            bdate = drday.SelectedValue.ToString() + "/" + drmonth.SelectedValue.ToString() + "/" + dryear.SelectedValue.ToString();
            if (RadioButton1.Checked)
            {
                gen = RadioButton1.Text;
            }
            else
            {
                gen = RadioButton2.Text;
            }
            classes = dlistclass.SelectedValue.ToString();
            cn.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = cn;
            cmd1.CommandText = "insert into student values(@studname,@phoneno,@emailid,@dob,@gender,@address,@age,@course,@password,@sscmarks,@sscyear,@hscmarks,@hscyear,@graduation,@graduationyr,@graduationcourse,@postgraduation,@postgraduationyr,@livebacklock,@deadbacklock,@loginflag)";
            cmd1.Parameters.AddWithValue("@studname", txtname.Text);
            cmd1.Parameters.AddWithValue("@phoneno", txtphone.Text );
            cmd1.Parameters.AddWithValue("@emailid", txtemail.Text );
            cmd1.Parameters.AddWithValue("@dob", bdate );
            cmd1.Parameters.AddWithValue("@gender", gen );
            cmd1.Parameters.AddWithValue("@address", txtaddress.Text);
            cmd1.Parameters.AddWithValue("@age", txtage.Text);
            cmd1.Parameters.AddWithValue("@course", classes );
            cmd1.Parameters.AddWithValue("@password", txtpass.Text);
            cmd1.Parameters.AddWithValue("@sscmarks",txtssc.Text);
            cmd1.Parameters.AddWithValue("@sscyear", txtsscyr.Text);
            cmd1.Parameters.AddWithValue("@hscmarks", txthsc.Text);
            cmd1.Parameters.AddWithValue("@hscyear", txthscyr.Text);
            cmd1.Parameters.AddWithValue("@graduation", txtgraduation.Text);
            cmd1.Parameters.AddWithValue("@graduationyr", txtgraduationyr.Text);
            cmd1.Parameters.AddWithValue("@graduationcourse", txtgraduationclass.Text);
            cmd1.Parameters.AddWithValue("@postgraduation", txtpost.Text);
            cmd1.Parameters.AddWithValue("@postgraduationyr", txtpostyr.Text);
            cmd1.Parameters.AddWithValue("@livebacklock", txtlive.Text);
            cmd1.Parameters.AddWithValue("@deadbacklock", txtdead.Text);
            cmd1.Parameters.AddWithValue("@loginflag", '0');
            int f1;
            f1=cmd1.ExecuteNonQuery();
            cmd1.Parameters.Clear();
            if (f1 > 0)
            {
                txtname.Text = " ";
                txtphone.Text = " ";
                txtemail.Text = " ";
                txtaddress.Text = " ";
                txtage.Text = " ";
                txtpass.Text = " ";
                txtssc.Text = " ";
                txtsscyr.Text = " ";
                txthsc.Text = " ";
                txthscyr.Text = " ";
                txtgraduation.Text = " ";
                txtgraduationyr.Text = " ";
                txtgraduationclass.Text = " ";
                txtpost.Text = " ";
                txtpostyr.Text = " ";
                txtlive.Text = " ";
                txtdead.Text = " ";
            }
            cmd1.Dispose();
            cn.Close();
            Response.Redirect("Home.aspx");



        }
    }
}