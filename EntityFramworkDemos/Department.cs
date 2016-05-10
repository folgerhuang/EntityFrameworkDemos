using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EntityFramworkDemos
{
    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Location { set; get; }
        public List<Employee> Employees { get; set; }
    }
}