using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace GliDAL
{
    class DBHelper
    {
        public static string con = @"server=.;initial catalog=Gligli;uid=sa;pwd=123456";
        public static SqlConnection conn;

        public static void Open()
        {
            if (conn == null)
                conn = new SqlConnection(con);
            if (conn.State == ConnectionState.Closed)
                conn.Open();
        }
        public static void Close()
        {
            if (conn==null)
                return;
            if (conn.State == ConnectionState.Open)
                conn.Close();       
        }
        //查询语句
        public static SqlDataReader GetData(string sql)
        {
            Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            return cmd.ExecuteReader();
        }
        /// <summary>
        /// 查询语句
        /// </summary>
        /// <param name="sql">sql命令</param>
        /// <returns></returns>
        public static DataSet GetDataSet(string sql)
        {
            Open();
            SqlDataAdapter asd = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            asd.Fill(ds);
            Close();
            return ds;
        }
        //增删改查
        public static bool Updata(string sql)
        {
            Open();
            SqlCommand cmd = new SqlCommand(sql,conn);        
            return cmd.ExecuteNonQuery()>0;
        }
    }
}
