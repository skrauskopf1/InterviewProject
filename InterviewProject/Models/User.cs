using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InterviewProject.Models
{
    public class User
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public DateTime DOB { get; set; }
        public string Phone { get; set; }
    }
}