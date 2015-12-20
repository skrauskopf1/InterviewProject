using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using InterviewProject.Models;
using InterviewProject.Models.DatabaseAccess;

namespace InterviewProject.Controllers
{
    public class HomeController : Controller
    {
        private DatabaseAccessUser da = new DatabaseAccessUser();

        public ActionResult Index()
        {           
            return View(da.GetUsers());
        }             

        public PartialViewResult SaveUser(User data)
        {
            return PartialView("UserRow", da.SaveUser(data));        
        }

        [HttpPost]
        public JsonResult DeleteUser(int ID)
        {
            return (new JsonResult() { Data = da.DeleteUser(ID) } );
        }

    }
}