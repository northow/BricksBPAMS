﻿using Bricks.Component.Tools;
using Bricks.Core.Data.IRepositories.ISystemRepositories;
using System;
using Autofac;
using AutoMapper;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bricks.Core.Data.Entity.SystemEntity;
using Bricks.Core.Data.Entity.SystemEntity.DoEntity;
using System.Data.Entity;
using System.Linq.Expressions;

namespace Bricks.Core.Data.Repository.Repositories.SystemRepositories
{
    class MessageRepository : IMessageRepository
    {

        public Tuple<int, List<MessageDo>> GetMessageList(Message model)
        {
            Mapper.Initialize(a =>
            {
                a.CreateMap<Message, MessageDo>()
                    .ForMember(de => de.SendUserName, op => { op.MapFrom(s => s.SendUserInfo.UserReallyname); });
            });
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                var messageRepository = dal.GetRepository<Message>();
                var conditions = ExpandHelper.True<Message>();

                if (!string.IsNullOrEmpty(model.MessageTitle))
                    conditions = conditions.And(a => a.MessageTitle.Contains(model.MessageTitle));

                if (model.SendTime != null)
                {
                    //  EntityFunctions.TruncateTime(model.SendTime); EF6.0之前的写法，
                    conditions = conditions.And(a => DbFunctions.TruncateTime(a.SendTime) == DbFunctions.TruncateTime(model.SendTime));
                }

                var templist = messageRepository.Get(filter: conditions, includeProperties: "SendUserInfo").ProjectToQueryable<MessageDo>();

                var count = templist.Count();

                if (model.order != null && model.order.Count() > 0)
                {
                    foreach (var item in model.order)
                    {
                        var column = model.columns.ElementAt(int.Parse(item.column));
                        templist = templist.OrderSort(column.data, item.dir);
                    }
                }

                var result = templist.PageBy(model.pageIndex, model.pageSize).ToList();

                return new Tuple<int, List<MessageDo>>(count, result);
            }
        }

        public List<Dictionary> GetDepartmentInfo()
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>()) { 
                
                var dictionary=dal.GetRepository<Dictionary>();

                return dictionary.Get(a => a.DicCategoryID == 1&&a.Enabled==true, includeProperties: "Users").ToList();
            }
        }

        public void InsertMessage(Message model)
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                dal.GetRepository<Message>().Insert(model);
                dal.Save();
            }
        }

        public void ModifyMessage(Message model)
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                dal.GetRepository<Message>().UpdateSup(model, new List<string>() { "SendTime", "SendUser" }, false);
                dal.Save();
            }
        }

        public Message GetMessageSingle(int id)
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
              return  dal.GetRepository<Message>().Get(a => a.MessageID == id).FirstOrDefault();
            }
        }

        public void RemoveMessage(int id)
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                dal.GetRepository<Message>().Delete(id);
                dal.Save();
            }
        }

        public void DetectionMessage(int currentUserId)
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                 var messageR=dal.GetRepository<Message>();

                 var stringtoid = currentUserId.ToString();

                 var conditions = ExpandHelper.True<Message>().And(a => a.RecUser.StartsWith(stringtoid + ",") ||
                                                                   a.RecUser.Contains("," + stringtoid + ",") ||
                                                                   a.RecUser.EndsWith("," + stringtoid)||
                                                                   a.RecUser == stringtoid);

                 conditions = conditions.And(a => a.ExpirationTime == null||DbFunctions.TruncateTime(DateTime.Now) <= DbFunctions.TruncateTime(a.ExpirationTime));

                 var currentUserMessage = messageR.Get(conditions).Select(a => a.MessageID);

                 if (currentUserMessage.Count() > 0) { 
                 
                    var userMesR = dal.GetRepository<UserMappingMessage>();

                    var usermes=userMesR.Get(a => a.UserID == currentUserId).Select(a=>a.MessageID);

                    var list = currentUserMessage.Except(usermes);

                    if (list.Count() > 0) {
                        var addUserMessage =new List<UserMappingMessage>();

                        Parallel.ForEach(list,(a =>
                        {
                            var mes=new UserMappingMessage{
                              MessageID=a,
                              UserID=currentUserId,
                              IsRead=false
                            };
                            addUserMessage.Add(mes);
                        }));
                        userMesR.Insert(addUserMessage);
                    }
                 }

                 dal.Save();
            }
        }

        public void SetSendState(Message model)
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                var messageR = dal.GetRepository<Message>();

                messageR.UpdateSup(model, new List<string>() { "SendEmailState" });
                messageR.Save();
            }
        }
    }
}
