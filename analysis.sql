-- StreamFlix analysis: all queries, numbered

-- Q1: Names of all Premium users (4 results)
SELECT full_name FROM users WHERE plan = 'Premium';

-- Q2: Users whose age is missing (3 results: user_ids 2, 6, 10)
SELECT * FROM users WHERE age IS NULL;

-- Q3: Total monthly revenue from active users (R1,242.00)
SELECT SUM(monthly_price) FROM users WHERE is_active = 1;

-- Q4: Average show rating (7.8). 1 show was skipped because its rating is NULL; AVG ignores NULLs.
SELECT AVG(rating) FROM shows;

-- Q5: Number of users on each plan (4 / 4 / 4)
SELECT plan, COUNT(*) AS users FROM users GROUP BY plan;

-- Q6: Average rating per genre, best to worst
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating
FROM shows GROUP BY genre ORDER BY avg_rating DESC;

-- Q7: Genres with more than 2 shows (only Drama, with 4)
SELECT genre, COUNT(*) AS show_count
FROM shows GROUP BY genre HAVING COUNT(*) > 2;

-- Q8: Average minutes watched per device, highest first
SELECT device, ROUND(AVG(minutes_watched), 1) AS avg_minutes
FROM views GROUP BY device ORDER BY avg_minutes DESC;
