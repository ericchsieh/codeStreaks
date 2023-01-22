DROP TABLE Users;
DROP TABLE Make;
DROP TABLE Attempt;
DROP TABLE Questions;

DROP SEQUENCE users_seq;

-- stat: 1=working 2=seeking, company is NULL
CREATE TABLE Users (userId INT PRIMARY KEY, email CHAR(200), pwd CHAR(200), nickname CHAR(30), stat boolean, preference INT, company CHAR(200));
CREATE TABLE Make (userId INT PRIMARY KEY, friendId Int, stat boolean); -- 1, 2, false, 2, 1, true
CREATE TABLE Attempt (attemptId INT PRIMARY KEY, userId INT, questionId INT, statue boolean, duration INT, FOREIGN KEY (userId) REFERENCES Users(userId) ON DELETE CASCADE, FOREIGN KEY (questionId) REFERENCES Questions(questionId) ON DELETE CASCADE);
CREATE TABLE Questions (questionId INT PRIMARY KEY, title CHAR(200), category INT, difficulty INT, link CHAR(200));
CREATE SEQUENCE users_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 MAXVALUE 9999 NOCYCLE NOCACHE NOORDER;


--------------- Users  --------------->
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (1, 'aaa@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (2, 'bbb@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (3, 'ccc@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (4, 'ddd@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (5, 'eee@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (6, 'fff@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (7, 'ggg@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (8, 'hhh@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (9, 'iii@gmail.com', '1234', 'John', 1, 2, 'Microsoft');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (10, 'jjj@gmail.com', '1234', 'John', 2, 2, '');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (11, 'kkk@gmail.com', '1234', 'John', 2, 3, '');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (12, 'lll@gmail.com', '1234', 'John', 2, 2, '');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (13, 'mmm@gmail.com', '1234', 'John', 2, 1, '');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (14, 'nnn@gmail.com', '1234', 'John', 2, 2, '');
INSERT INTO Users(postId, email, pwd, nickname, stat, preference, company) VALUES (15, 'ooo@gmail.com', '1234', 'John', 2, 2, '');
 

--------------- Make  --------------->
INSERT INTO Make(userId, friendId, stat) VALUES (1, 2, true);
INSERT INTO Make(userId, friendId, stat) VALUES (2, 1, true);
INSERT INTO Make(userId, friendId, stat) VALUES (3, 1, true);
INSERT INTO Make(userId, friendId, stat) VALUES (1, 3, true);
INSERT INTO Make(userId, friendId, stat) VALUES (4, 1, true);
INSERT INTO Make(userId, friendId, stat) VALUES (1, 4, true);
INSERT INTO Make(userId, friendId, stat) VALUES (6, );
INSERT INTO Make(userId, friendId, stat) VALUES (7, );
INSERT INTO Make(userId, friendId, stat) VALUES (8, );
INSERT INTO Make(userId, friendId, stat) VALUES (9, );
INSERT INTO Make(userId, friendId, stat) VALUES (10, );
INSERT INTO Make(userId, friendId, stat) VALUES (11, );
INSERT INTO Make(userId, friendId, stat) VALUES (12, );
INSERT INTO Make(userId, friendId, stat) VALUES (13, );
INSERT INTO Make(userId, friendId, stat) VALUES (14, );
INSERT INTO Make(userId, friendId, stat) VALUES (15, );
