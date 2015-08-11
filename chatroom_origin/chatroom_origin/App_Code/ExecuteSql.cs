using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace DAL
{
    /// <summary>
    /// ExecuteSql 的摘要说明
    /// </summary>
    public class ExecuteSql:DAO
    {
        public string ErrorMessage = "";//存储数据访问过程的错误信息
        //执行SQL命令但不返回数据
        public int run(string sqlText)
        {
            Debug.Assert(sproc == null);
            sproc = new StoredProcedure(sqlText);
            int flag = sproc.Run();
            this.ErrorMessage = sproc.ErrorMessage;
            sproc.Dispose();
            sproc = null;
            return flag;
        }

        //执行sql命令,返回数据在DataTable对象
        public int run(DataTable table, string sqlText)
        {
            Debug.Assert(sproc == null);
            sproc = new StoredProcedure(sqlText);
            int flag  = sproc.Run(table);
            this.ErrorMessage = sproc.ErrorMessage;
            sproc.Dispose();
            sproc = null;
            return flag;
        }
    }
}
