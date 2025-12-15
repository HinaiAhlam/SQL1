
-----1

select*from Customer
 

----2 
SELECT name AS GuestName,phone AS ContactNumber, customer_id AS ProofIDType FROM Customer;

----3
ALTER TABLE Booking
ADD total_cost DECIMAL(10,2);

select*from Booking

UPDATE Booking SET total_cost = 3250 WHERE booking_id = 1;

UPDATE Booking SET total_cost = 2800 WHERE booking_id = 2;
UPDATE Booking SET total_cost = 2500 WHERE booking_id = 3;
UPDATE Booking SET total_cost = 3500 WHERE booking_id = 4;
UPDATE Booking SET total_cost =3800 WHERE booking_id = 5;
select*from Booking

ALTER TABLE Booking ADD status NVARCHAR(30);

UPDATE Booking SET status = N'Confirmed' WHERE booking_id = 1;

 UPDATE Booking SET status = N'Completed' WHERE booking_id = 2;
 UPDATE Booking SET status = N'Confirmed' WHERE booking_id = 3;
  UPDATE Booking SET status = N'Completed' WHERE booking_id = 4;
  UPDATE Booking SET status = N'Confirmed' WHERE booking_id = 5;


  ---4 
   select  room_num as RoomNumber, nightly_rate as Nightly_Rate from Room


   ---5
   select * from Room where nightly_rate>30
   ----6
   select * from Staff where job_title='it programer'
   ----7
   select * from Booking where check_in='2025-01-02'
   ----8
SELECT booking_id, check_in AS BookingDate, status, total_cost FROM Booking ORDER BY total_cost DESC;

----9
select max(nightly_rate)as MaxPrice,min(nightly_rate)as MinPrice,avg(nightly_rate)AvgPrice FROM Room;

--10
select count(*) as TotalRooms from Room

----11
select * from Customer where name like 'm%'
----12
select *from Room where nightly_rate BETWEEN 40 and 80

----13

insert into Customer(customer_id, name, phone, email) VALUES(6,'ahlamm',111121,'10343@gmail.com')
SELECT *FROM Customer WHERE customer_id = 6;
----14

insert into Room (room_num, type, nightly_rate, branch_id) VALUES(205,'Single Room',40,4)
insert into Booking (booking_id, check_in, check_out, customer_id) VALUES(8,'2025-12-20','2025-12-25',7)

INSERT INTO Booking_Room (booking_id, room_num, branch_id) VALUES (8, 205, 4);

select*from Room 


insert into Booking (booking_id, check_in, check_out, customer_id) VALUES(10,'2025-12-20','2025-12-25',7)
select * from Booking_Room
insert into  Customer (customer_id, name, phone, email) VALUES(7,'ahhhlam',111100,'0003@gmail.com')
select * from Booking_Room
insert into Branches (branch_id, name, location) VALUES(9,'almusunahh','almusunah')
INSERT INTO Booking_Room (booking_id, room_num, branch_id) VALUES(7,205,8)
SELECT room_num, branch_id, type, nightly_rate
FROM Room
WHERE room_num = 205;

select * from Branches

----15
INSERT INTO Customer (customer_id, name, phone, email)
VALUES (8, 'shammssa', NULL, NULL);


---16
update Booking set status =N'comfirmed' WHERE booking_id =7

---17
UPDATE Room SET nightly_rate =nightly_rate*1.10 WHERE TYPE='Queen Room'


---18
SELECT booking_id, check_out, status FROM Booking WHERE check_out < CAST(GETDATE() AS DATE);


---19
DELETE FROM Booking WHERE status = N'Cancelled';

