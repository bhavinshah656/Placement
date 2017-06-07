using System;
using System.Data;
using System.Data.SqlClient;
namespace WebPlacement
{
    public class db
    {
        public static SqlConnection cn;
        public static string struemail;
        public static string strupic;
        public static string name;
        public db()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public static void open()
        {
            string str = @"Data Source=W27109601XVTY\SQLEXPRESS;Initial Catalog=placement;Integrated Security=True";
            cn = new SqlConnection(str);
            cn.Open();
        }
        public static void close()
        {
            cn.Close();
        }
        public static void process(String query)
        {
            open();
            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.ExecuteNonQuery();//insert,update,delete
            close();
        }

        internal static DataTable selprocess()
        {
            throw new NotImplementedException();
        }

        public static DataTable selprocess(String query)
        {
            open();
            SqlCommand cmd = new SqlCommand(query, cn);
            SqlDataReader dr = cmd.ExecuteReader();//select
            DataTable dt = new DataTable();
            dt.Load(dr);
            close();
            return (dt);
        }

    }
}
