create database banking
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    address VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(20),
    date_of_birth DATE
);
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    position VARCHAR(50),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);

CREATE TABLE Account (
    account_number INT PRIMARY KEY,
    type VARCHAR(30),
    balance DECIMAL(10,2),
    date_created DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE [Transaction] (
    transaction_id INT PRIMARY KEY,
    date DATE,
    amount DECIMAL(10,2),
    type VARCHAR(30),
    account_number INT,
    FOREIGN KEY (account_number) REFERENCES Account(account_number)
);

CREATE TABLE Loan (
    loan_id INT PRIMARY KEY,
    type VARCHAR(30),
    amount DECIMAL(10,2),
    issue_date DATE,
    customer_id INT,
    employee_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Employee_Customer (
    employee_id INT,
    customer_id INT,
    action_type VARCHAR(50),
    PRIMARY KEY (employee_id, customer_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
