-- StreamFlix analysis: all queries, numbered

-- Q1: Names of all Premium users (4 results)
SELECT full_name FROM users WHERE plan = 'Premium';
