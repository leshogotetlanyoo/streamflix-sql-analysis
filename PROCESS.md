# Process Journal

## Wednesday 25 November
- Opened sqliteonline.com and ran streamflix_setup.sql to build the database.
- Checked the users table with SELECT * FROM users; and got 12 rows.
- Some ages showed NULL, which are the deliberate missing values in the brief.
- Created the public GitHub repo and uploaded the setup file.
- Problems I hit: None during setup. The file ran first time and the users table showed 12 rows as expected. 

## Section A: Foundations
- Q1: SELECT full_name chooses which column to display, because I only want the names and not every column. WHERE plan = 'Premium' filters the rows, so only users on the Premium plan are kept. Without it, the query would return all 12 users. The result was 4 names: Thabo Nkosi, Naledi Khumalo, Zinhle Ndlovu and David Mwangi.
- Q2: I use IS NULL and not = NULL because NULL does not equal anything, not even zero. It means "unknown". When I tried = NULL it returned 0 rows, so only IS NULL finds the missing values. In my data it found 3 users (user_ids 2, 6 and 10).
- Q3: I used SUM(monthly_price) to add up every monthly price into one total. I added WHERE is_active = 1 so only active subscribers are counted, because 1 means active and 0 means cancelled. The result was 1242, which matches the checkpoint of R1,242.00. without the WHERE I got 1788, which was too high because it included cancelled users. 
