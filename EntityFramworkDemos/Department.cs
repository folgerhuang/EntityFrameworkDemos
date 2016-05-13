using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

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