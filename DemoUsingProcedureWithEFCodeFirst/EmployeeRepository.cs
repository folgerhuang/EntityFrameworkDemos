using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DemoUsingProcedureWithEFCodeFirst
{
    public class EmployeeRepository
    {
        EmployDBContext context = new EmployDBContext();

        public List<Employee> getEmployees()
        {
            return context.Employees.ToList();
        }

       public void UpdateEmployee(Employee employee)
        {
            Employee employeeToUpdate = context
                 .Employees.SingleOrDefault(x => x. == employee.ID);
            employeeToUpdate.Name = employee.Name;
            employeeToUpdate.Gender = employee.Gender;
            employeeToUpdate.Salary = employee.Salary;
            context.SaveChanges();
        }
    }
}