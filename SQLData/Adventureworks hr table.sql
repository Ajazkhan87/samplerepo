/*get total number of rows in a table*/
SELECT count(*)
  FROM [AdventureWorks2019].[HumanResources].[Employee]


  SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee]
--get only specific columns from a table
SELECT e.BusinessEntityID,
e.NationalIDNumber,
e.JobTitle,
e.Gender
  FROM [AdventureWorks2019].[HumanResources].[Employee] e

  --create aliases
  SELECT A.AddressID,
		 A.AddressLine1

  FROM [AdventureWorks2019].Person.Address a

  --count number of rows in a coloumn
  SELECT COUNT (e.jobtitle)
  FROM [AdventureWorks2019].[HumanResources].[Employee] e

    SELECT *
  FROM [AdventureWorks2019].[HumanResources].[Employee] e
Where e.Gender = 'M' and e.MaritalStatus = 'S' and e.OrganizationLevel > 2
