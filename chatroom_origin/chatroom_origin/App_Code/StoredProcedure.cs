using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Threading.Tasks;
using System.Data.OracleClient;

namespace DAL
{
    /// <summary>
    /// 封装访问数据库访问过程的类
    /// </summary>
    sealed internal class StoredProcedure:IDisposable
    {
        public string ErrorMessage = "";//存放数据库访问过程中出现的错误信息
        //访问Access数据库，使用OleDb托管程序
        //定义OleDbCommand对象
        private System.Data.OracleClient.OracleCommand command;

        public StoredProcedure(string SqlText)
        {
            ConfigManager config = new ConfigManager();

            command = new OracleCommand(SqlText, new  OracleConnection(config.DALConnectionString));
            command.CommandType = CommandType.Text;
            command.Connection.Open();
        } 
/*        public StoredProcedure(string SqlText)
        {
            OracleConnection oc = new OracleConnection(
                string.Concat(
                @"Data Source=",
                @"    (DESCRIPTION=",
                @"        (ADDRESS_LIST=",
                @"            (ADDRESS=",
                @"                (PROTOCOL=TCP)",
                @"                (HOST=127.0.0.1)",
                @"                (PORT=1521)",
                @"            )",
                @"        )",
                @"        (CONNECT_DATA=",
                @"            (SERVICE_NAME=orcl)",
                @"        )",
                @"    );",
                @"Persist Security Info=True;",
                @"User Id=scott;",
                @"Password=123456"
                ));
            command.CommandText = SqlText;
            oc.Open();
        }
        */

        /// <SUMMARY>
        /// 释放资源
        /// </summary>
        public void Dispose()
        {
            if (command != null)
            {
                OracleConnection connection = command.Connection;
                Debug.Assert(connection != null);
                command.Dispose();
                command = null;
                connection.Dispose();
            }
        }


        /// <summary>
        /// 执行不返回数据的SQL命令
        /// </summary>
        public int Run()
        {
            if (command == null)
            {
                throw new ObjectDisposedException(GetType().FullName);
            }
            try
            {
                command.ExecuteNonQuery();
                return 1;
            }
            catch (Exception e)
            {
                ErrorMessage = e.Message;
                return 0;
            }
        }

        ///<summary>
        ///执行返回数据的SQL命令
        /// <param name='dataTable'>
        /// 把返回的数据填充到dataTable 里面</param>
        /// <returns>
        /// 返回一个整型</returns>
        ///</summary>
        public int Run(DataTable dataTable)
        {
            if (command == null)
            {
                throw new ObjectDisposedException(GetType().FullName);
            }
            try
            {
                OracleDataAdapter dataAdapter = new OracleDataAdapter();

                dataAdapter.SelectCommand = command;
                dataAdapter.Fill(dataTable);
                return 1;
            }
            catch (Exception e)
            {
                ErrorMessage = e.Message;
                return 0;
            }
        }
    }
}
