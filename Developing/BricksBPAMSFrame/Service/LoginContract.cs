using Bricks.Component.Tools;
using Bricks.Core.Data.Entity;
using Bricks.Core.Data.Entity.SystemEntity;
using BricksBPAMSFrame.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Bricks.Core.Data.IRepositories.ISystemRepositories;

namespace BricksBPAMSFrame.Service
{
    public abstract class LoginContract : ILoginService
    {

        public IUserRepository UserRepository { get; set; }

        /// <summary>
        /// 登录校验--Labix
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public Tuple<bool, string, User> LoginJudge(User model)
        {
            var message = string.Empty;
            var falg=true;
            try
            {
                var User = UserRepository.GetSingle(model);

                if (User == null)
                {
                    message = "指定账号的用户不存在。";
                    falg = false;
                }
                else if (!User.UserPassword.Equals(EncryptHelper.ToMD5Salt(model.UserPassword)))  //比较盐值转换后的密码
                {
                    message = "登录密码不正确。";
                    falg = false;
                }
                else if (!User.IsEnable)
                {
                    message = "您的账号已被禁用无法登陆。";
                    falg = false;
                }
                return new Tuple<bool, string, User>(falg, message, User);

            }catch(Exception ex){
                message = "服务器异常，请与管理员联系";
                falg = false;
                new LogHelper().LogError("被系统过滤捕获的异常" + ex);
                return new Tuple<bool, string, User>(falg, message,new User());
            }
           
        }

        public abstract Tuple<bool, string> Login(User model,string IP);

        public virtual void Logon()
        {
            FormsAuthentication.SignOut();
        }

    }
}