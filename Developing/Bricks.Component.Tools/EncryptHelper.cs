﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Component.Tools
{
    public class EncryptHelper
    {
        //定义初始盐值
        private const string saltValue = "!B@u#i$l%d^I&n";

        /// <summary>
        /// MD5盐值加密
        /// </summary>
        /// <param name="inputPass"></param>
        /// <returns></returns>
        public static string ToMD5Salt(string inputPass)
        {
            return MD5Encoding(inputPass, saltValue);
        }

        /// <summary>  
        /// MD5盐值加密  
        /// </summary>  
        /// <param name="rawPass">源字符串</param>  
        /// <param name="salt">盐值</param>  
        /// <returns>加密后字符串</returns>  
        private static string MD5Encoding(string rawPass, object salt)
        {
            if (salt == null) return rawPass;
            return MD5Encoding(rawPass + "{" + salt.ToString() + "}");
        }

        /// <summary>  
        /// MD5 加密字符串（带盐值）  
        /// </summary>  
        /// <param name="inputPass">源字符串</param>  
        /// <returns>加密后字符串</returns>  
        private static string MD5Encoding(string inputPass)
        {
            // 创建MD5类的默认实例：MD5CryptoServiceProvider
            MD5 md5 = MD5.Create();
            byte[] bs = Encoding.UTF8.GetBytes(inputPass);
            byte[] hs = md5.ComputeHash(bs);
            StringBuilder sb = new StringBuilder();
            foreach (byte b in hs)
            {
                // 以十六进制格式格式化  
                sb.Append(b.ToString("x2"));
            }
            return sb.ToString();
        }
    }
}
