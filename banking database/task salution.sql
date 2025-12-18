---1
SELECT * FROM Customer;
---2
SELECT 
    c.name AS full_name,
    c.phone,
    a.date_created AS membership_start_date
FROM Customer c
JOIN Account a ON c.customer_id = a.customer_id;
---3
SELECT 
    loan_id,
    amount,
    type
FROM Loan;
---4




SELECT 
    account_number,
    type,
    balance,
    date_created,
    customer_id
FROM Account
WHERE balance > 1000;



---7
SELECT account_number,
    type,
    balance,
    date_created,
    customer_id
FROM Account
WHERE YEAR(date_created) = 2002;

---8
SELECT account_number,
    type,
    balance,
    date_created,
    customer_id
FROM Account
ORDER BY balance DESC;


---9
SELECT 
    MAX(balance) AS max_balance,
    MIN(balance) AS min_balance,
    AVG(balance) AS avg_balance
FROM Account;

---10
SELECT COUNT(*) AS total_customers
FROM Customer;



