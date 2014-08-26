CREATE database db_STP;
USE db_stp;
CREATE table stp_Questions 
(QuestionID_PK int not null auto_increment, ParentTestID_FK int NULL,
 QuestionText varchar(350), CorrectAnswerID_FK int NOT NULL, PRIMARY KEY (QuestionID_PK));
CREATE TABLE stp_Tests
(TestID_PK int not null auto_increment, TestName varchar(50), CategoryID_FK int,
 CreatorID_FK int, isActive bool, PRIMARY KEY (TestID_PK)) ;
CREATE TABLE stp_Users
(UserID_PK int not null auto_increment, Username varchar(50), userPassword varchar(100), SALT varchar(50),
Email varchar(50), PermissionLvl_FK tinyint, PRIMARY KEY (UserID_PK));
CREATE TABLE stp_UserLvl
(PermissionLvl_PK tinyint not null auto_increment, CategoryName varchar(50), PRIMARY KEY (PermissionLvl_PK));
CREATE TABLE stp_TestCategories
(CategoryID_PK int not null auto_increment, CategoryName tinytext, PRIMARY KEY (CategoryID_PK));
CREATE TABLE stp_Scores
(UserID_FK int, TestID_FK int, LastTestScore_RAW int, LastTestQuestions text, LastTextMissed text);
CREATE TABLE stp_Answers
(AnswerID_PK int not null auto_increment, AnswerText varchar(350), QuestionID_FK int, PRIMARY KEY (AnswerID_PK));
INSERT INTO stp_userlvl (CategoryName)
VALUES ('Guest');
INSERT INTO stp_userlvl (CategoryName)
VALUES ('User');
INSERT INTO stp_userlvl (CategoryName)
VALUES ('Moderator');
INSERT INTO stp_userlvl (CategoryName)
VALUES ('Admin');
INSERT INTO stp_users (username, userpassword, email, permissionlvl_fk)
VALUES ('admin', '0mgwtF!STP', 'inquiry@cfcrusaders.org', 4);
