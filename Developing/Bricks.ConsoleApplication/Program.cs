using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bricks.Component.Tools;

namespace Bricks.ConsoleApplication
{
    class Program
    {
        static void Main(string[] args)
        {
            string password = "123456";
            string encryptPassword = EncryptHelper.ToMD5Salt(password);
            Console.Write(encryptPassword);
        }
    }
}
