# README

## Database setup

1. Install PostgreSQL (idk the exact installation process sorry)

2. Enter a Postgres shell session
```
  sudo su - postgres
  psql
```

3. Setup the role
```
  DROP ROLE IF EXISTS hedex_user;
  CREATE USER hedex_user WITH PASSWORD 'hedex_password';
  ALTER ROLE hedex_user CREATEDB;
```

4. Exit the session
```
  \q
  exit
```

5. Create the databases using the new user
```
  psql postgres -U hedex_user
  DROP DATABASE IF EXISTS hedex_development;
  CREATE DATABASE hedex_development;
  DROP DATABASE IF EXISTS hedex_test;
  CREATE DATABASE hedex_test;
  DROP DATABASE IF EXISTS hedex_production;
  CREATE DATABASE hedex_production;
```

## Dumping the database

Run the following script:
```
  sudo -H -u postgres pg_dump -s hedex_development > ~/dump.sql
  sudo mv ~/dump.sql /full/directory/you/want/
```
