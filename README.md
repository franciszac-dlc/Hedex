# README

This README contains steps on setting up the application.

## Rails setup

1. Install rbenv (and ruby-build, a plugin for rbenv)

2. Run the following commands to install Ruby
```
rbenv install 2.4.0
rbenv global 2.4.0
```

3. Run the following commands to install Rails and other dependencies
```
gem install rails
gem install bundler
bundle install
```

4. Setup the database (steps below)

5. Run the website with `rails s`, and go to `localhost:3000` in the web browser.

6. View the possible links with `rails routes`. The ones labeled with `GET` are the ones you can type into the browser URL.

## Database setup

1. Install PostgreSQL (installation process depends on OS, sorry)

2. Enter a Postgres shell session
```
$ sudo su - postgres
$ psql
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

5. Create the databases using the new user (you can try skipping this step since the databases might be created below)
```
$ psql postgres -U hedex_user
  DROP DATABASE IF EXISTS hedex_development;
  CREATE DATABASE hedex_development;
  DROP DATABASE IF EXISTS hedex_test;
  CREATE DATABASE hedex_test;
  DROP DATABASE IF EXISTS hedex_production;
  CREATE DATABASE hedex_production;
```

## Seeding the database

Run the following in the terminal:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```
