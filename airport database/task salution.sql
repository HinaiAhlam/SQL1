---1
select * from Leg_instance
---2
select leg_no,scheduled_dep_time scheduled_arrive_time from Flight_leg
---3
select airplane_id,type_name,tn_seat from airplane
---4


---5
--6
select airplane_id,tn_seat from Airplane where tn_seat >120 
---7
select airport_code,name from airport  where name='Muscat International Airport'
--8
select scheduled_dep_time from Flight_leg where scheduled_dep_time= '09:00:00'
--9
SELECT *FROM Flight_leg ORDER BY scheduled_dep_time ASC;

--10

---11
SELECT COUNT(*) AS TotalFlightLegs
FROM Flight_leg;
---12