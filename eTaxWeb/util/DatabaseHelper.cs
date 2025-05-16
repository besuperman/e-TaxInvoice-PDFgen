using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace eTaxWeb.util
{
    public static class DatabaseHelper
    {
        public static string NameConnection()
        {
            return ConfigurationManager.ConnectionStrings["PCMSDBConnection"].ConnectionString;
        }
    }
}