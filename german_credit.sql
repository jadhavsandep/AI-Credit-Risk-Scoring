CREATE TABLE creditdata (
    Age INT,
    Sex VARCHAR(20),
    Job INT,
    Housing VARCHAR(50),
    Savingaccounts VARCHAR(50),
    Checkingaccount VARCHAR(50),
    Creditamount INT,
    Duration INT,
    Purpose VARCHAR(100),
    Risk VARCHAR(20)
);
select * from creditdata;

-- Q.1 Count Good vs Bad Risk Customers

SELECT Risk,
       COUNT(*) AS total_customers
FROM creditdata
GROUP BY Risk;
-- { problem
--The bank wants to know how many customers are high-risk and low-risk.
--Insight
--Count Good Risk customers.
--Count Bad Risk customers.
--Business Value
--Helps understand overall portfolio risk.
--Supports loan approval strategies.}
-- Q.2 Average Credit Amount
SELECT AVG(Creditamount) AS avg_credit_amount
FROM creditdata;
{--Problem :The bank wants to know the average loan amount requested by customers.
--Insight: Calculates average loan size.
--Business Value:
--1.Helps estimate lending exposure.
--2.Assists in financial planning.}
-- Q.3 Maximum Loan Amount
SELECT MAX(Creditamount) AS max_loan
FROM creditdata;
{--Problem:Identify the largest loan requested.
--Insight:Finds the highest loan value.
--Business Value:
--1.Detects high-value customers.
--2.Supports risk monitoring.}
-- Q.4 Minimum Loan Amount
SELECT MIN(Creditamount) AS min_loan
FROM creditdata;
{--Problem:
--Identify the smallest loan requested.
--Insight:
--Finds the lowest loan value.
--Business Value:
--Understands loan range.
--Helps design loan products.
-- Q.5 Average Age by Risk}
SELECT Risk,
       ROUND(AVG(Age),2) AS avg_age
FROM creditdata
GROUP BY Risk;
{--Problem:
--Determine whether age impacts credit risk.
--Insight:
--Calculates average age for each risk category.
--Business Value:
--Identifies risk patterns across age groups.
--Helps create targeted lending policies.
-- Q.6 Loan Purpose Analysis}
SELECT Purpose,
       COUNT(*) AS total_loans
FROM creditdata
GROUP BY Purpose
ORDER BY total_loans DESC;
{--Problem:
--Understand why customers apply for loans.
--Insight:
--Shows the most common loan purposes.
--Business Value:
--Helps banks design specialized loan products.
--Improves marketing strategies.}
-- Q.7 Housing Analysis
SELECT Housing,
       COUNT(*) AS total_customers
FROM creditdata
GROUP BY Housing;
{--Problem:
--Analyze customer housing status.
--Insight:
--Counts customers by housing type.
--Business Value:
--Housing ownership can influence creditworthiness.
--Helps in risk assessment.}
-- Q.8 Top 10 Highest Loans
SELECT *
FROM creditdata
ORDER BY Creditamount DESC
LIMIT 10;
{--Problem:
--Identify customers with the highest loan amounts.
--Insight:
--Lists the top 10 largest loans.
--Business Value:
--High-value loans carry higher financial risk.
--Helps prioritize monitoring and review.}

-- =====================================================
-- AI-Powered Credit Risk Scoring Model
-- Author: Sandeep Ganesh Jadhav
-- =====================================================

-- Project Summary

-- I used SQL to analyze customer demographics,
-- loan behavior, and credit risk patterns.

-- I identified the distribution of
-- Good Risk and Bad Risk customers.

-- I analyzed loan amounts to understand
-- customer borrowing behavior and lending exposure.

-- I examined customer age patterns to identify
-- potential relationships between age and credit risk.

-- I analyzed housing status to understand
-- how ownership and living arrangements impact risk.

-- I evaluated loan purposes to determine
-- the most common reasons customers apply for credit.

-- These insights help banks make
-- data-driven lending decisions.

-- The analysis supports better
-- credit risk management and loan approval strategies.
-- =====================================================


