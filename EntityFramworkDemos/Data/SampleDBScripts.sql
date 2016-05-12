USE [master]
GO

/****** Object:  Database [Sample]    Script Date: 2016/5/10 9:11:08 ******/
CREATE DATABASE [Sample]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sample', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Sample.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Sample_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Sample_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Sample] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sample].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Sample] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Sample] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Sample] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Sample] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Sample] SET ARITHABORT OFF 
GO

ALTER DATABASE [Sample] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Sample] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Sample] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Sample] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Sample] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Sample] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Sample] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Sample] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Sample] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Sample] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Sample] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Sample] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Sample] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Sample] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Sample] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Sample] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Sample] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Sample] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Sample] SET  MULTI_USER 
GO

ALTER DATABASE [Sample] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Sample] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Sample] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Sample] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Sample] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Sample] SET  READ_WRITE 
GO




USE [Sample]
GO

Create table Departments
(
     ID int primary key identity,
     Name nvarchar(50),
     Location nvarchar(50)
)

Create table Employees
(
     ID int primary key identity,
     FirstName nvarchar(50),
     LastName nvarchar(50),
     Gender nvarchar(50),
     Salary int,
     DepartmentId int foreign key references Departments(Id)
)


Insert into Departments values ('IT', 'New York')
Insert into Departments values ('HR', 'London')
Insert into Departments values ('Payroll', 'Sydney')

Insert into Employees values ('Mark', 'Hastings', 'Male', 60000, 1)
Insert into Employees values ('Steve', 'Pound', 'Male', 45000, 3)
Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000, 1)
Insert into Employees values ('Philip', 'Hastings', 'Male', 45000, 2)
Insert into Employees values ('Mary', 'Lambeth', 'Female', 30000, 2)
Insert into Employees values ('Valarie', 'Vikings', 'Female', 35000, 3)
Insert into Employees values ('John', 'Stanmore', 'Male', 80000, 1)


GO



/*

data for Lesson5   Fist_Name =>First_Name

*/
Insert into Departments values ('IT', 'New York')
Insert into Departments values ('HR', 'London')
Insert into Departments values ('Payroll', 'Sydney')
Insert into Employee (First_Name,LastName,Gender,Salary,DepartmentId,JobTitle) values ('Mark', 'Hastings', 'Male', 60000, 1,'Software Engineer')
Insert into Employee (First_Name,LastName,Gender,Salary,DepartmentId,JobTitle) values ('Steve', 'Pound', 'Male', 45000, 3,'VP')
Insert into Employee (First_Name,LastName,Gender,Salary,DepartmentId,JobTitle)  values ('Ben', 'Hoskins', 'Male', 70000, 1,'GM')
Insert into Employee (First_Name,LastName,Gender,Salary,DepartmentId,JobTitle)  values ('Philip', 'Hastings', 'Male', 45000, 2,'Software Engineer')
Insert into Employee (First_Name,LastName,Gender,Salary,DepartmentId,JobTitle)  values ('Mary', 'Lambeth', 'Female', 30000, 2,'VP')
Insert into Employee (First_Name,LastName,Gender,Salary,DepartmentId,JobTitle)  values ('Valarie', 'Vikings', 'Female', 35000, 3,'GM')
Insert into Employee (First_Name,LastName,Gender,Salary,DepartmentId,JobTitle)  values ('John', 'Stanmore', 'Male', 80000, 1,'VP')



/*use procedure */

use Sample
Go

CREATE TABLE Company(
	id int IDENTITY primary key,
	Name NVARCHAR(50),
	Location NVARCHAR(50)
)
Go

Create Procedure InsertCompany
@ID int,
@NAME NVARCHAR(50),
@LOCATION NVARCHAR(50)
AS
Begin
	insert into Company(Name,Location) values(@NAME,@LOCATION)
END

GO

Create PROCEDURE UpdateCompany
@ID int,
@NAME NVARCHAR(50),
@LOCATION NVARCHAR(50)
AS
BEGIN
	update Company set Name=@NAME, Location=@LOCATION where id=@ID
END
Go

Create PROCEDURE DelCompany
@ID int
AS
BEGIN
	Delete Company where id=@ID
END