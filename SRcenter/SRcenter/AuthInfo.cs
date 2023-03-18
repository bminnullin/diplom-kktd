using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SRcenter.Models;

namespace SRcenter
{
    public static  class AuthInfo
    {
        public static int ClientID { get; set; }
        public static string C_name { get; set; }
        public static string C_phone { get; set; }
        public static string C_email { get; set; }
        public static DateTime C_birthday { get; set; }


        public static int UserID { get; set; }
        public static string U_name { get; set; }
        public static string U_phone { get; set; }
        public static string U_email { get; set; }
        public static string U_photo { get; set; }
        public static DateTime U_birthday { get; set; }
        public static string GetPhoto
        {
            get
            {
                if (U_photo is null)
                    return null;
                return Directory.GetCurrentDirectory() + @"\Images\" + U_photo.Trim();
            }
        }
        public static string U_ip { get; set; }

        }
}
