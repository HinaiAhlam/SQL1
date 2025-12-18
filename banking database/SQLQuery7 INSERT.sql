insert into Branch (branch_id, address, phone) VALUES(1,'almusanah','11122'),(2,'muscat','0987'),(3,'sur','123'); 
select * from Branch

INSERT INTO Customer (customer_id, name, address, phone, date_of_birth) VALUES(1,'ahlam','almusunah','0087','1993-11-6'),(2,'nassir','muscat','1111','2002-2-6'),(3,'khalifa','sur','2211','2010-3-5')
select * from Customer


INSERT INTO Employee (employee_id, name, position, branch_id) VALUES(1,'ahlam','hr',1),(2,'khalid','it',2),(3,'khalifa','issist',3)
select * from Employee

INSERT INTO Account (account_number, type, balance, date_created, customer_id) VALUES(11,'saving',1001,'2002-2-2',1),(22,'checking',1002,'2001-1-3',2),(33,'saving',1003,'2010-4-5',3)
select * from Account

INSERT INTO [Transaction] (transaction_id, date, amount, type, account_number) VALUES(123,'2002-1-2',2000,'NEFT',11),(234,'2020-2-2',3000,'RTGS',22),(345,'2012-1-2',1000,'IMPS',33)
select * from [Transaction]

INSERT INTO Loan (loan_id, type, amount, issue_date, customer_id, employee_id) VALUES(09,'Payday',1000.00,'2010-2-4',1,1),(08,'Auto',2000.00,'2002-6-5',2,2),(07,'Student',2500.00,'2003-2-1',3,3)
select * from Loan 

INSERT INTO Employee_Customer (employee_id, customer_id, action_type) VALUES(1,1,'Account-related'),(2,2,'Loan-related'),(3,3,'Other services')
select * from Employee_Customer 


