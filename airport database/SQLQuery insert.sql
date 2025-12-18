INSERT INTO Airport VALUES
('MCT', 'Muscat', 'Muscat', 'Muscat International Airport'),
('SLL', 'Salalah', 'Dhofar', 'Salalah Airport'),
('OHS', 'Sohar', 'Al Batinah North', 'Sohar Airport'),
('UKH', 'Duqm', 'Al Wusta', 'Duqm International Airport');
select * from Airport


INSERT INTO Flight VALUES
('WY101', 'Oman Air', 'Sunday', 'No smoking'),
('WY202', 'Oman Air', 'Monday', 'None'),
('WY303', 'SalamAir', 'Thursday', 'Hand baggage only');
select * from Flight


INSERT INTO airplan_type VALUES
('Boeing737', 'Boeing', 180),
('AirbusA320', 'Airbus', 170);
select * from airplan_type

INSERT INTO Airplane VALUES
('OM01', 160, 'Boeing737'),
('OM02', 150, 'AirbusA320');
select * from Airplane


INSERT INTO Flight_leg VALUES
(1, 'WY101', '07:00:00', '08:30:00', 'MCT', 'SLL'),
(1, 'WY202', '09:00:00', '10:00:00', 'MCT', 'OHS'),
(1, 'WY303', '15:00:00', '16:10:00', 'MCT', 'UKH');

select * from Flight_leg


INSERT INTO Leg_instance VALUES
(1, 'WY101', '2025-02-01', '08:35:00', '07:05:00', 'Available', 'OM01'),
(1, 'WY202', '2025-02-02', '10:05:00', '09:05:00', 'Available', 'OM02'),
(1, 'WY303', '2025-02-03', '16:15:00', '15:05:00', 'Available', 'OM01');

select * from Leg_instance



INSERT INTO Reservation VALUES
(1, 'WY101', '2025-02-01', '10A', 'Said Al Balushi', '96891234567'),
(1, 'WY101', '2025-02-01', '10B', 'Aisha Al Harthi', '96892345678'),
(1, 'WY202', '2025-02-02', '5C', 'Khalid Al Rashdi', '96893456789');
select * from Reservation


INSERT INTO Fare VALUES
('OMF1', 45.00, 'WY101'),
('OMF2', 35.00, 'WY202'),
('OMF3', 50.00, 'WY303');

select * from Fare


INSERT INTO Airport_Airplane_Type VALUES
('MCT', 'Boeing737'),
('MCT', 'AirbusA320'),
('SLL', 'AirbusA320'),
('OHS', 'Boeing737'),
('UKH', 'AirbusA320');
select * from Airport_Airplane_Type



