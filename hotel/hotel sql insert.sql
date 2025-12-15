insert into Branches (branch_id, name, location) VALUES(1,'almusunah','almusunah'),(2,'barka','barka'),(3,'muscat','muscat'),(4,'sohar','sohar'),(5,'sur','sur');
select*from  Branches

INSERT INTO Room (room_num, type, nightly_rate, branch_id) VALUES(1,'Single Room',20,1),(2,'Double Room',40,2),(3,'Twin Room',50,3),(4,'Queen Room',60,4),(5,'King Room',80,5)
select*from  Room

INSERT INTO Customer (customer_id, name, phone, email) VALUES(1,'ahlam',111111,'1343@gmail.com'),(2,'nasser',222222,'1121@gmail.com'),(3,'khalifa',3333333,'2221@gmail.com'),(4,'shamsa',4444444,'32132@gmail.com'),(5,'muna',55555,'45321@gmail.com')
select*from Customer

INSERT INTO Booking (booking_id, check_in, check_out, customer_id) VALUES(1,'1/2/2025','3/2/2025',1),(2,'3/2/2025','5/2/2025',2),(3,'5/2/2025','6/2/2025',3),(4,'6/2/2025','9/2/2025',4),(5,'9/2/2025','11/2/2025',5)
select*from Booking

INSERT INTO Staff (staff_id, branch_id, name, job_title, salary) VALUES(1,1,'ahlam','it programer',3000),(2,2,'tasnim','issitent',9000),(3,3,'alzahra','software ingenering',2500),(4,4,'saleh','HR',2000),(5,5,'nassir','it',1500)
select*from Staff

INSERT INTO Booking_Room (booking_id, room_num, branch_id) VALUES(1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5)
select*from Booking_Room