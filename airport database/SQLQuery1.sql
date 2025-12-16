create database Airport
create table airport (airport_code varchar(10)primary key,city varchar(50),state varchar(50),name varchar(100));
create table flight( flight_no varchar(10)primary key,airline varchar(50),weekday varchar(20),restriction varchar(100));
create table airplan_type (type_name varchar(50)primary key,company varchar(50),max_seat int);
create table airplane( airplane_id varchar(10) primary key,tn_seat int,type_name varchar(50), foreign key(type_name)references airplan_type(type_name));
CREATE TABLE Flight_leg (leg_no INT,flight_no VARCHAR(10),scheduled_dep_time TIME, scheduled_arrive_time TIME,departure_airport_code VARCHAR(10), arrival_airport_code VARCHAR(10),
    PRIMARY KEY (leg_no, flight_no),
    FOREIGN KEY (flight_no) REFERENCES Flight(flight_no),
    FOREIGN KEY (departure_airport_code) REFERENCES Airport(airport_code),
    FOREIGN KEY (arrival_airport_code) REFERENCES Airport(airport_code));

CREATE TABLE Leg_instance (leg_no INT,flight_no VARCHAR(10),date DATE,arrival_time TIME,departure_time TIME,available_state VARCHAR(20),airplane_id VARCHAR(10),
    PRIMARY KEY (leg_no, flight_no, date),
    FOREIGN KEY (leg_no, flight_no)
    REFERENCES Flight_leg(leg_no, flight_no),
    FOREIGN KEY (airplane_id)REFERENCES Airplane(airplane_id));

CREATE TABLE Reservation (leg_no INT,flight_no VARCHAR(10),date DATE,seat_no VARCHAR(5),customer_name VARCHAR(100),phone VARCHAR(20),
    PRIMARY KEY (leg_no, flight_no, date, seat_no),
    FOREIGN KEY (leg_no, flight_no, date)REFERENCES Leg_instance(leg_no, flight_no, date));

CREATE TABLE Fare (fare_code VARCHAR(10) PRIMARY KEY,amount DECIMAL(10,2),flight_no VARCHAR(10),FOREIGN KEY (flight_no) REFERENCES Flight(flight_no));

CREATE TABLE Airport_Airplane_Type (airport_code VARCHAR(10),type_name VARCHAR(50),
    PRIMARY KEY (airport_code, type_name),
    FOREIGN KEY (airport_code) REFERENCES Airport(airport_code),
    FOREIGN KEY (type_name) REFERENCES airplan_type(type_name));

