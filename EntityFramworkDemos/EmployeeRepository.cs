using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EntityFramworkDemos
{
    public class EmployeeRepository
    {
        public List<Department> getDepartments()
        {
            EmployeeDBContext dbcontext = new EmployeeDBContext();
            return dbcontext.Departments.Include("Employees").ToList();
        }
    }
}