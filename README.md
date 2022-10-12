# Making a Jokes database and fetching the API 

# SQL
In the terminal:
- Type 'psql' to enter psql
- CREATE DATABASE jokes_yeah -> makes the database
- \c jokes_yeah -> connect to jokes_yeah
- \i db/01-create_tables.sql -> imports existing database file
- \i db/02-seeds.sql -> putting data in the datbases

Now we have the following:
          List of relations
 Schema |  Name   | Type  |   Owner   
--------+---------+-------+-----------
 public | authors | table | tommytran
 public | jokes   | table | tommytran

 Instead of typing one sql command at a time, we can type them in 03-ops and import that file like we did above

 A table is just parsed text. You cant work with it in Javascript.

 