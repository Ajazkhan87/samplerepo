/*get total number of rows in a table*/
SELECT count(*)
  FROM [AdventureWorks2019].[HumanResources].[Employee]

--Read total number of rows and columns in a table
  SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee]
--get only specific columns from a table and aliasing
SELECT e.BusinessEntityID,
e.NationalIDNumber,
e.JobTitle,
e.Gender
  FROM [AdventureWorks2019].[HumanResources].[Employee] e

  --create aliases
  SELECT A.AddressID,
		 A.AddressLine1

  FROM [AdventureWorks2019].Person.Address as a

  --count number of rows in a coloumn
  SELECT COUNT (e.jobtitle)
  FROM [AdventureWorks2019].[HumanResources].[Employee] e
  --Filtering with where clause
    SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee] e
Where e.Gender = 'M' and e.MaritalStatus = 'S' and e.OrganizationLevel < 2

--get employees whose gender is M and Marital status is S and vacation hours between 20 and 30.
SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee] e
  Where e.VacationHours between 20 and 30
  and e.Gender = 'M' and e.MaritalStatus = 'S'

  --Filter employees with like pattern and wildcard entry(%)
  SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee] e
  Where e.JobTitle like 'research%'

  --Filter employees by vacation hrs and order by Birthdate descending
SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee] e
  Where e.VacationHours between 20 and 50
  order by e.BirthDate desc

--group by gender and count no. of rows
SELECT COUNT (e.Gender),e.Gender, e.VacationHours
  FROM [AdventureWorks2019].[HumanResources].[Employee] e
  --Where e.VacationHours between 20 and 50
  group by e.Gender
  --having count (e.VacationHours) > 50
