DROP TABLE if EXISTS users;
DROP TABLE if EXISTS accounts;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    UserName VARCHAR(100),
    Email VARCHAR(300),
    PassWord VARCHAR(15)
);

CREATE TABLE accounts(
    id SERIAL PRIMARY KEY,
    AccountName text, 
    AccountNumber int,
    Balance int,
    User_id int, 
    constraint fk_user foreign key(User_id)
        references users(id)
        on delete cascade
);

INSERT INTO users (UserName, Email, PassWord) VALUES ('test_username', 'test@test.com', 'password123');
INSERT INTO users (UserName, Email, PassWord) VALUES ('test1_username', 'test1@test.com', 'password123');
INSERT INTO users (UserName, Email, PassWord) VALUES ('test2_username', 'test2@test.com', 'password123');

INSERT INTO accounts (AccountName, AccountNumber, Balance, User_id) VALUES ('Ruby', 200112, 2000, 1);
INSERT INTO accounts (AccountName, AccountNumber, Balance, User_id) VALUES ('Premier', 311112, 2000, 2);
INSERT INTO accounts (AccountName, AccountNumber, Balance, User_id) VALUES ('Jade', 540112, 2000, 3);
