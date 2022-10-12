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

# What data is the table
 A table is just parsed text. You cant work with it in Javascript.

# Client and Server
PSQL is a client that we are running. 

PostgresSQL is the server deep in our computer. 
 
 database lives outside of your project.

 We need schema and seed files to share the content of the database. We are sharing how its built and whats inside.

 # Node-Postgres
 collection of node.js modules to interact with your postgres sql database. 

 ## Pool or Client connection?
 Client - connect to database, keep connection until you let go. Not ideal for big production with multiple users.

 Pool - get access to throw queries in and they get picked up by sql eventually. Better for multiple users throwing in queries. 

 # Setting up 
 Go to folder where index.js is in and type
 - npm init -y
 - npm install pg
 - Continue in index.js
 