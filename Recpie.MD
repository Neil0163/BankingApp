!App Uses!
Any signed up user can log into their bank .
User can list multiple accounts associated to them.
A User can purchase new banking products.
A User can transfer money from their account to another. 
A User can transfer money to someone else.

!Nouns!
Users, accounts(name, accountNumber), money(balance)

!Infer the Table! 
Name the first table always plural:
Users
Colums:
UserName, Email, Password

Name the second table always plural:
Accounts
Colums:
AccountName, AccountNumber, Balance, User_id (foreign key)

!Decide PostgreSQL Language! 
TableUsers: ID Serial, UserName VARCHAR, Email VARCHAR, Password VARCHAR
TableAccounts: ID Serial, AccountName text, AccountNumber int, Balance int, User_id int (foreign Key)

!Design the Table relationship! 
Make sure you Answer Yes to these two questions:
Can one user have many bank accounts : Yes
Can one Account have many users : No
Table type: One to many 

!Write the Sql!

DROP TABLE if EXISTS users;
DROP TABLE if EXISTS accounts;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100),
    email VARCHAR(300),
    password VARCHAR(15)
);

CREATE TABLE accounts(
    id SERIAL PRIMARY KEY,
    accountname text, 
    accountnumber int,
    balance int,
    user_id int, 
    constraint fk_user foreign key(user_id)
        references users(id)
        on delete cascade
);

INSERT INTO users (username, email, password) VALUES ('test_username', 'test@test.com', 'password123');
INSERT INTO users (username, email, password) VALUES ('test1_username', 'test1@test.com', 'password123');
INSERT INTO users (username, email, password) VALUES ('test2_username', 'test2@test.com', 'password123');

INSERT INTO accounts (accountname, accountnumber, balance, User_id) VALUES (Ruby, 200112, 2000, 1);
INSERT INTO accounts (accountname, accountnumber, balance, User_id) VALUES (Premier, 311112, 2000, 2);
INSERT INTO accounts (accountname, accountnumber, balance, User_id) VALUES (Jade, 540112, 2000, 3);

create the tables: psql -h 127.0.0.1 BankingApp_test < seeds/BankingApp.sql

