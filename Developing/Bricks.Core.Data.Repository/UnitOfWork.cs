using Bricks.Component.Data;
using Bricks.Component.Tools;
using Bricks.Core.Data.Entity;
using Bricks.Core.Data.Entity.SystemEntity;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


namespace Bricks.Core.Data.Repository
{
    public class UnitOfWork : IDisposable, IDependency
    {
        public DbContext context;

        public UnitOfWork(DbContext _context)
        {
            context = _context;
        }

        public GenericRepository<TEntity> GetRepository<TEntity>() where TEntity : class
        {
            return new GenericRepository<TEntity>(context);
        }

        public DbSet<TEntity> Set<TEntity>() where TEntity : class
        {
            return context.Set<TEntity>();
        }

        #region Save & Dispose
        public void Save()
        {
            context.SaveChanges();
        }

        private bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
        #endregion
    }
}