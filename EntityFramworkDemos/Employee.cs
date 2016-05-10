using System.ComponentModel.DataAnnotations.Schema;


namespace EntityFramworkDemos
{
    [Table("Employee")]
    public class Employee
    {
        public int Id { get; set; }
        [Column("Fist_Name")]
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public int Salary { get; set; }
        public int DepartmentId { get; set; }

        [ForeignKey("DepartmentId")]
        public Department Department { get; set; }
    }
}