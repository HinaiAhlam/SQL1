create database hatel 
CREATE TABLE Branches (
    branch_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(150) NOT NULL
);

CREATE TABLE Room (
    room_num INT,
    type VARCHAR(50) NOT NULL,
    nightly_rate DECIMAL(10,2) NOT NULL,
    branch_id INT,
    PRIMARY KEY (room_num, branch_id),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);
CREATE TABLE Booking (
    booking_id INT PRIMARY KEY,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    branch_id INT,
    name VARCHAR(100) NOT NULL,
    job_title VARCHAR(50),
    salary DECIMAL(10,2),
    FOREIGN KEY (branch_id) REFERENCES Branches(branch_id)
);
CREATE TABLE Booking_Room (
    booking_id INT,
    room_num INT,
    branch_id INT,
    PRIMARY KEY (booking_id, room_num, branch_id),
    FOREIGN KEY (booking_id) REFERENCES Booking(booking_id),
    FOREIGN KEY (room_num, branch_id) REFERENCES Room(room_num, branch_id)
);