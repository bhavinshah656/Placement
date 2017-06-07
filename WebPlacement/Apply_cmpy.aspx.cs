using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebPlacement
{
    public partial class Apply_cmpy : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            float a, b, c, d,flg;
            int i, f, sid;
            string lgflag;
            a = float.Parse(Session["sscmarks"].ToString());
            b = float.Parse(Session["hscmarks"].ToString());
            c = float.Parse(Session["graduation"].ToString());
            d = float.Parse(Session["Postgraduation"].ToString());
            i = int.Parse(Session["livebacklock"].ToString());
            f = int.Parse(Session["deadbacklock"].ToString());
            sid = int.Parse(Session["studentid"].ToString());
            lgflag = "select * from student where studentid='" + sid +"'";
            DataTable dt = db.selprocess(lgflag);
            if (dt.Rows.Count != 0)
            {
                Session["loginflag"] = dt.Rows[0][21].ToString();
            }
            flg = int.Parse(Session["loginflag"].ToString());
            DataTable dt1 = db.selprocess(lgflag);
            if (flg == 0)
            {
                SqlDataSource1.SelectCommand = "SELECT * FROM [company][student]where ssc_marks<='" + a + "' and hsc<='" + b + "' and graduation<='" + c + "' and postgraduation<='" + d + "'and livebacklock>='" + i + "'and deadbacklock>='" + f + "'and companyid not in (select b.companyid from company as a,applied_stud as b,student as s where b.studentid='" + sid + "')";
                DataList1.DataBind();
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Are Already placed')", true);
                //Response.Redirect("stud_profile.aspx");
            }


        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cid = DataList1.DataKeys[DataList1.SelectedIndex].ToString();
            DataListItem item = DataList1.SelectedItem;
            string name = ((Label)item.FindControl("lblmsg")).Text;
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            string str1 = "select studentid from student where emailid='" + db.struemail + "'";
            SqlConnection cn = new SqlConnection(@"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True");
            cn.Open();
            SqlCommand cmd1 = new SqlCommand(str1, cn);
            cmd1.Connection = cn;
            int id = 0;
            using (SqlDataReader reader = cmd1.ExecuteReader())
            {
                while (reader.Read())
                {
                    id = Convert.ToInt32(reader["studentid"]);
                }

            }

            cmd1.Dispose();
            cn.Close();
            LinkButton cbtn = (LinkButton)sender;
            DataListItem item = (DataListItem)cbtn.NamingContainer;
            int index = item.ItemIndex;
            Label cid = DataList1.Items[index].FindControl("companyidLabel") as Label;
            int cmpid = Convert.ToInt32(cid.Text);

            cn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd1.CommandText = "insert into applied_stud values(@companyid,@studentid)";
            cmd1.Parameters.AddWithValue("@companyid", cmpid);
            cmd1.Parameters.AddWithValue("@studentid", id);
            cmd1.ExecuteNonQuery();
            cmd.Dispose();
            cn.Close();
            Response.Redirect("Apply_cmpy.aspx");
        }

        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}