using Bricks.Component.Data;
using Bricks.Core.Data.Entity;
using Bricks.Core.Data.Entity.SystemEntity;
using Bricks.Core.Data.Entity.SystemEntity.DoEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.IRepositories.ISystemRepositories
{
    public interface IUserRepository
    {
        Tuple<int, List<User>> GetList(User model);

        List<User> GetUserInfos();

        User GetSingle(User model);

        User GetbyID(int userID);

        void AddUser(User model);

        void ModifyUser(User model);

        void DeleteUser(User model);

        void SetUserInfoRole(int userID, List<int> roleIDList);

        List<AutoUserDo> GetUserInfobyName(string value);

        void ResetUserPWDbyID(int id);

    }
}
