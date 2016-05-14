using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lesson8
{
    public class EmployeeRepository
    {
        EmployeeDBContext context = new EmployeeDBContext();

        public List<Employee> getEmployees()
        {
            return context.Employees.ToList();
        }

        public void insertEmployee(Employee e)
        {
            context.Employees.Add(e);
            context.SaveChanges();
        }

        public void upDateEmployee(Employee e)
        {
            Employee employee = context.Employees.FirstOrDefault<Employee>(x => x.ID == e.ID);
            employee.Name = e.Name;
            employee.Location = e.Location;
            employee.Gender = e.Gender;
            employee.Salary = e.Salary;
            context.SaveChanges();
        }

        public void DeleteEmployee(Employee e)
        {
            Employee ex = context.Employees.SingleOrDefault(x => x.ID == e.ID);
            if(ex!=null)
              context.Employees.Remove(ex);
            context.SaveChanges();
        }
    }
}