using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using LatihanBlazor.Models;

namespace LatihanBlazor.Pages 
{
    public partial class EmployeePage 
    {
        public IEnumerable <Employee> Employees { get; set; }
        
        protected override Task OnInitializedAsync()
        {
            LoadEmployees();
            return base.OnInitializedAsync();
        }

        private void LoadEmployees(){
            Employee e1 = new Employee{
                EmployeeId=1,
                FirstName="Roitonia",
                LastName="Panjaitan",
                Email="roitonia.panjaitan@si.ukdw.ac.id",
                DateOfBirth = new DateTime(1998,10,09),
                Gender = Gender.Female,
                Department = new Department{DepartmentId=1,DepartmentName="CEO"},
                PhotoPath = "images/roitonia.jpg"
            };

             Employee e2 = new Employee{
                EmployeeId=2,
                FirstName="Soong ",
                LastName="joong-ki",
                Email="soong.joong-ki@gmail.com",
                DateOfBirth = new DateTime(1999,02,20),
                Gender = Gender.Male,
                Department = new Department{DepartmentId=2,DepartmentName="Manager"},
                PhotoPath = "images/soong.jpg"
                  };
                  
             Employee e3 = new Employee{
                EmployeeId=3,
                FirstName="Song",
                LastName="Kang",
                Email="song.Kang@gmail.com",
                DateOfBirth = new DateTime(2000,03,28),
                Gender = Gender.Male,
                Department = new Department{DepartmentId=2,DepartmentName="Human Resource"},
                PhotoPath = "images/song.jpg"
                   };

                   Employees = new List<Employee>{e1,e2,e3};
        }
    }
}