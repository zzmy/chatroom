using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.OracleClient;
using System.Configuration;

/// <summary>
/// Class1 的摘要说明
/// </summary>
namespace DAL
{
    /// <summary>
    /// 获得.config 中的数据库联接字符串
    /// </summary>
    public class ConfigManager
    {
        private string dalConnectionString;

        public string DALConnectionString
        {
            get
            {
                return dalConnectionString;
            }
        }

        public ConfigManager()
	    {
		    //dalConnectionString = System.Configuration.ConfigurationManager.AppSettings["db1ConnectionString"];
            //"Data Source=orcl;User Id=scott;Password=123456;Integrated Security=no;" 
            dalConnectionString = "Data Source=orcl;User Id=chatroom;Password=chatroom;Integrated Security=no;";
//            dalConnectionString = string.Concat(
//                @"Data Source=",
//                @"    (DESCRIPTION=",
//                @"        (ADDRESS_LIST=",
//                @"            (ADDRESS=",
//                @"                (PROTOCOL=TCP)",
//                @"                (HOST=127.0.0.1)",
//                @"                (PORT=1521)",
//                @"            )",
//                @"        )",
//                @"        (CONNECT_DATA=",
//                @"            (SERVICE_NAME=orcl)",
//                @"        )",
//                @"    );",
//                @"Persist Security Info=True;",
//                @"User Id=scott;",
//                @"Password=123456");
                
	    }
    }
}
