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

-- Q9: Each view with user name and show title (25 rows)
SELECT u.full_name, s.title, v.minutes_watched
FROM views v
JOIN users u ON v.user_id = u.user_id
JOIN shows s ON v.show_id = s.show_id;

-- Q10: Total minutes watched per genre
SELECT s.genre, SUM(v.minutes_watched) AS total_minutes
FROM views v
JOIN shows s ON v.show_id = s.show_id
GROUP BY s.genre
ORDER BY total_minutes DESC;

-- Q11: Most-watched show (Township Tales, 5 plays)
SELECT s.title, COUNT(*) AS plays
FROM views v
JOIN shows s ON v.show_id = s.show_id
GROUP BY s.show_id, s.title
ORDER BY plays DESC
LIMIT 1;

-- Q12: Number of views per plan
SELECT u.plan, COUNT(*) AS total_views
FROM views v
JOIN users u ON v.user_id = u.user_id
GROUP BY u.plan
ORDER BY total_views DESC;

-- Q13: Top 3 users by total minutes watched
SELECT u.full_name, SUM(v.minutes_watched) AS total_minutes
FROM views v
JOIN users u ON v.user_id = u.user_id
GROUP BY u.user_id, u.full_name
ORDER BY total_minutes DESC
LIMIT 3;

-- Q14: Users who never watched anything (3 users)
SELECT u.full_name
FROM users u
LEFT JOIN views v ON u.user_id = v.user_id
WHERE v.view_id IS NULL;
