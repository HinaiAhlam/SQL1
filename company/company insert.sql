insert into Department( DNUM,DName,HiringDate)values(1,'IT','2015'),(2,'HR','2014'),(3,'FINENCE','2013'),(4,'marketing','2010'),(5,'operation','2016');


select*from Department


insert into Employee(SSN,DNUM,BirthDate,Gender,Fname,LName,Supervises)values(202,1,'1993','F','ahlam','ALhinai',null),(213,2,'1994','F','alzahar','ALhinai',null),(111,3,'1995','m','saleh','alhinai',null),(333,4,'1996','f','tasneem','alhinai',null),(123,5,'1999','m','ali','alhini',null)
select*from Employee
INSERT INTO Dependent (DName, SSN, Gender, BirthDate)
VALUES
    ('noor',     202, 'F', '2017-05-10'),
    ('sara',     202, 'F', '2019-11-22'),

    ('mohammed', 213, 'M', '2018-03-15'),

    ('ahmed',    111, 'M', '2016-01-09'),
    ('fatma',    111, 'F', '2014-08-21'),

    ('reem',     333, 'F', '2020-02-14'),

    ('yousef',   123, 'M', '2018-06-30');

	select*from Dependent

	INSERT INTO Projects (PNumber, Location, City, Pname)
VALUES
    (10, 'HQ Building',      'Muscat',  'HR System Development'),
    (20, 'Tech Park',        'Nizwa',   'Mobile App Project'),
    (30, 'Industrial Area',  'Sohar',   'Automation System'),
    (40, 'Downtown Center',  'Salalah', 'Website Upgrade'),
    (50, 'Main Office',      'Ibri',    'Cyber Security Project');

	select*from Projects 
	
	INSERT INTO Dep_Location (DNUM, Location)
VALUES
   
    (1, 'Ruwi'),
    (2, 'Nizwa'),
    (3, 'Shinas'),
    (4, 'Salalah'),
    (5, 'Ibri');
	DELETE FROM Dep_Location
WHERE DNUM = 1 AND Location = 'Ruwi';
INSERT INTO Dep_Location (DNUM, Location)
VALUES
   
    (1, 'Ruwi')
	select*from Dep_Location 

	INSERT INTO WorkOn (SSN, PNumber, WorkingHours)
VALUES
    (202, 10, 40),  -- Ahlam works on HR System Development
    (202, 20, 20),  -- Ahlam also works on Mobile App Project
    (213, 20, 35),  -- Alzahar on Mobile App Project
    (111, 30, 40),  -- Saleh on Automation System
    (333, 40, 30),  -- Tasneem on Website Upgrade
    (123, 50, 25),  -- Ali on Cyber Security Project
    (111, 10, 10);  -- Saleh also helps on HR System Development
	select*from WorkOn 