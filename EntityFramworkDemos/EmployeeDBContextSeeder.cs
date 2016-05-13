using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace EntityFramworkDemos
{
    public class EmployeeDBContextSeeder : DropCreateDatabaseIfModelChanges<EmployeeDBContext>
    {
        protected override void Seed(EmployeeDBContext context)
        {
            Department dp1 = new Department()
            {
                Name = "IT",
                Location = "Beijing",
                Employees = new List<Employee>()
                {
                    new Employee()
                    {
                        FirstName="shi",
                        LastName="yu",
                        Gender="male",
                        Salary=40000,
                        JobTitle="GP"
                    },
                    new Employee()
                    {
                        FirstName="huang",
                        LastName="yu",
                        Gender="Female",
                        Salary=30000,
                        JobTitle="Software Engineer"
                    }
                }
            };
            Department department2 = new Department()
            {
                Name = "HR",
                Location = "London",
                Employees = new List<Employee>()
                {
                    new Employee()
                    {
                        FirstName = "Philip",
                        LastName = "Hastings",
                        Gender = "Male",
                        Salary = 45000,
                        JobTitle = "Recruiter"
                    },
                    new Employee()
                    {
                        FirstName = "Mary",
                        LastName = "Lambeth",
                        Gender = "Female",
                        Salary = 30000,
                        JobTitle = "Sr. Recruiter"
                    }
                }
            };
            Department department3 = new Department()
            {
                Name = "Payroll",
                Location = "Sydney",
                Employees = new List<Employee>()
                {
                    new Employee()
                    {
                        FirstName = "Steve",
                        LastName = "Pound",
                        Gender = "Male",
                        Salary = 45000,
                        JobTitle = "Sr. Payroll Admin",
                    },
                    new Employee()
                    {
                        FirstName = "Valarie",
                        LastName = "Vikings",
                        Gender = "Female",
                        Salary = 35000,
                        JobTitle = "Payroll Admin",
                    }
                }
            };
            context.Departments.Add(dp1);
            context.Departments.Add(department2);
            context.Departments.Add(department3);

            base.Seed(context);
        }
    }
}