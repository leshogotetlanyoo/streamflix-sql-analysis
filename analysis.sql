-- StreamFlix analysis: all queries, numbered

-- Q1: Names of all Premium users (4 results)
SELECT full_name FROM users WHERE plan = 'Premium';

-- Q2: Users whose age is missing (3 results: user_ids 2, 6, 10)
SELECT * FROM users WHERE age IS NULL;

-- Q3: Total monthly revenue from active users (R1,242.00)
SELECT SUM(monthly_price) FROM users WHERE is_active = 1;

-- Q4: Average show rating (7.8). 1 show was skipped because its rating is NULL; AVG ignores NULLs.
SELECT AVG(rating) FROM shows;
