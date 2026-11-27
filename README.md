# StreamFlix SQL Analysis

StreamFlix is a streaming service. In this project I investigated its database of users, shows and viewing history to answer business questions about revenue, churn and engagement, using SQL.

**Name:** Tetlanyo Leshogo
**Cohort:** Data Science January

## Dataset
- `users` (12 rows): subscribers, with plan, price, active status and country
- `shows` (10 rows): the catalogue, with genre and rating
- `views` (25 rows): who watched what, on which device and for how long

## How to run
1. Run `streamflix_setup.sql` to build the database.
2. Run `analysis.sql` to see all 18 queries.

## Key findings
1. Premium brings in about 64% of revenue (R796 of R1,242) and has 0% churn.
2. Standard has the highest churn at 75%, and every user who never watched anything has cancelled.
3. Premium users account for 14 of 25 views, and the country column needed cleaning ('South Africa' vs 'south africa').

See `FINDINGS.md` for the full report and `PROCESS.md` for my process journal.

## Skills demonstrated
SQL JOINs, aggregation, GROUP BY and HAVING, subqueries, CASE, NULL handling, data cleaning, analysis.
