SELECT * FROM customer_churn_analysis.customer;
use customer_churn_analysis;

-- Q1: Find the total number of customers in the dataset.
select count(*) as total_customers from customer;

-- Q2: Count how many customers have churned and how many have not.
select churn,count(*) as Total from customer 
group by churn;

-- Q3: Calculate the churn rate (%) of customers.
select round(sum(case when churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100,2) as churn_rate_percent
from customer;

-- Q4: Find the number of churned customers for each gender.
select gender,count(*) as churned from customer
where churn = 'Yes'
group by gender;

-- Q5: Find churn count and churn rate for each contract type.
select contract,
    count(*) as total_customers,
    sum(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) as churn_count,
    round(sum(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/count(*)*100,2) as churn_rate_percent
from customer
group by contract;

-- Q6: Compare average monthly_charges for churned vs non-churned customers.
select churn, round(avg(monthly_charges),2) as avg_monthly_charges from customer
group by churn;

-- Q7: Find average tenure of customers who churned vs those who did not.
select churn, round(avg(tenure),2) as avg_tenure
from customer
group by churn;

-- Q8: Identify customers with tenure < 6 months and monthly charges > 70, and check how many of them churned.
select count(*) as high_risk_customers,
       sum(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) as churned_high_risk from customer
where tenure < 6 and monthly_charges > 70;

-- Q9: Which payment method has the highest churn rate?
select payment_method,
       count(*) as total_customers,
       sum(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) as churn_count,
       round(sum(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/count(*)*100,2) as churn_rate_percent
from customer
group by payment_method
order by churn_rate_percent DESC
limit 1;

-- Q10: Find churn rate for customers having Internet Service = 'Fiber optic' and Contract = 'Month-to-month'.
select count(*) as total_customers,
    sum(CASE WHEN churn='Yes' THEN 1 ELSE 0 END) as churned_customers,
    round(sum(CASE WHEN churn='Yes' THEN 1 ELSE 0 END)/count(*)*100,2) as churn_rate_percent
from customer
where internet_service='Fiber optic' and contract='Month-to-month';
