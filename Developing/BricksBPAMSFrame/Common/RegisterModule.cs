using Autofac;
using Bricks.Core.Data.IRepositories;
using Bricks.Core.Data.Repository;
using BricksBPAMSFrame.Service;
using BricksBPAMSFrame.Service.Imp;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace BricksBPAMSFrame.Common
{
    public class RegisterModule : Module
    {

        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<LoginService>().As<ILoginService>().PropertiesAutowired();

            builder.RegisterType<UserService>().As<IUserService>().PropertiesAutowired();

            builder.RegisterType<CoreDbContext>().As<DbContext>();
        }

    }
}