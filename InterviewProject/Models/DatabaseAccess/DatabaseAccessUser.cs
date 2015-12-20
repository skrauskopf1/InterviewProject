using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PetaPoco;

namespace InterviewProject.Models.DatabaseAccess
{       
    public class DatabaseAccessUser
    {        
        private PetaPoco.Database db = new PetaPoco.Database("homeConnection");
        private string table = "tUser";
        private string primaryKey = "ID";
        
        public List<User> GetUsers()
        {
            List<User> users =  db.Query<User>("select * from  " + table).ToList();
            return users;
        }

        public User SaveUser(User user)
        {
            if (user.ID == 0)
            {                
                user.ID = (int)db.Insert(table,primaryKey, user);
            }
            else
            {
                db.Update(table, primaryKey, user);
            }
            
            return user;
        }

        public bool DeleteUser(int ID)
        {
            return (db.Delete(table, primaryKey, null, ID) == 1);
        }
    }
}