# Process Journal

## Wednesday 25 November
- Opened sqliteonline.com and ran streamflix_setup.sql to build the database.
- Checked the users table with SELECT * FROM users; and got 12 rows.
- Some ages showed NULL, which are the deliberate missing values in the brief.
- Created the public GitHub repo and uploaded the setup file.
- Problems I hit: None during setup. The file ran first time and the users table showed 12 rows as expected. 

## Section A: Foundations
- Q1: SELECT full_name chooses which column to display, because I only want the names and not every column. WHERE plan = 'Premium' filters the rows, so only users on the Premium plan are kept. Without it, the query would return all 12 users. The result was 4 names: Thabo Nkosi, Naledi Khumalo, Zinhle Ndlovu and David Mwangi.
