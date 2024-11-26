CREATE TABLE dbo.Employees_01
(
  EmployeeID int NOT NULL PRIMARY KEY ,
  FirstName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  ManagerID int NULL
)

GO


INSERTINTO Employees VALUES (101,'Alireza','Nematollahi',NULL)
INSERTINTO Employees VALUES (102,'Ali Mohammad','Bahmanyar', 101)
INSERTINTO Employees VALUES (103,'Mohammad','BozorgGhommi', 102)
INSERTINTO Employees VALUES (104,'Masoud','Narimani', 103)
INSERTINTO Employees VALUES (105,'Mohsen','Hashemi', 103)
INSERTINTO Employees VALUES (106,'Maryam','Dadashi', 102)
INSERTINTO Employees VALUES (107,'Farhad','Shahrivar', 106)
INSERTINTO Employees VALUES (108,'Naser','Pourali', 106)
INSERTINTO Employees VALUES (109,'Reza','Bagheri', 102)
INSERTINTO Employees VALUES (110,'Abbas','Najafian', 102)
Go
WITH cteReports(EmpID, FirstName, LastName, MgrID, EmpLevel)
AS
(
SELECT EmployeeID, FirstName, LastName, ManagerID, 1
FROM Employees
WHERE EmployeeID = 110
UNIONALL
SELECTe.EmployeeID, e.FirstName, e.LastName, e.ManagerID,r.EmpLevel + 1
FROM Employees e INNERJOINcteReports r
ON e.EmployeeID = r.MgrID
)
SELECT
FirstName +' '+ LastName AS FullName,
EmpLevel
FROMcteReports
ORDERBY EmpLevel