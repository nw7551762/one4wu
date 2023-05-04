

/*----------------------------*/
CREATE DATABASE Topic2;

create table member (
	memberPk int not null identity(1,1) primary key,
	memberId varchar(32) UNIQUE,
	name varchar(32),
	password varchar(4000),
	location nvarchar(64),
	email varchar(64),
	gender varchar(32),
	birthday datetime,
	registerTime datetime,
	memberImage varbinary(max),
	lastLogin datetime,
	verification int,
	permission int,
	haveImg BIT
)


create table verification (
	vcid int not null identity(1,1) primary key,
	memberId varchar(32) UNIQUE,
	verifyCode varchar(max)
)

CREATE TABLE Friendship (
  FriendshipId INT PRIMARY KEY IDENTITY(1,1),
  userpk int NOT NULL,
  friendpk int NOT NULL,
  CONSTRAINT FK_memeber1 FOREIGN KEY (userpk) REFERENCES member (memberpk),
  CONSTRAINT FK_memeber2 FOREIGN KEY (friendpk) REFERENCES member (memberpk),
  CONSTRAINT UniqueFriendship UNIQUE (userpk, friendpk)
);

CREATE TABLE ChatHistory (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Sender int NOT NULL,
    Receiver int NOT NULL,
    Message VARCHAR(MAX) NOT NULL,
    Timestamp DATETIME NOT NULL,
	Readed BIT NOT NULL,
	CONSTRAINT FK_Sender FOREIGN KEY (Sender) REFERENCES member (memberpk),
	CONSTRAINT FK_Receiver FOREIGN KEY (Receiver) REFERENCES member (memberpk),
);

CREATE TABLE onlineusercounts (
   id INT IDENTITY(1,1) PRIMARY KEY,
   hour INT NOT NULL,
   usercount INT NOT NULL,
   maxusercount INT NOT NULL,
   usedate DATETIME NOT NULL
);

update member set permission=1 where memberId='aaa';

insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('ddd','ddd','Aa!12345','nw755162@gmail.com', '1', '0','2023-02-18 13:32:52.667')

 insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('eee','eee','Aa!12345','nw755162@gmail.com', '0', '0','2023-03-18 13:32:52.667')

 insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('fff','fff','Aa!12345','nw755162@gmail.com', '0', '0','2023-04-18 13:32:52.667')

 insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('ggg','ggg','Aa!12345','nw755162@gmail.com', '0', '0','2023-04-18 13:32:52.667')

 insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('hhh','hhh','Aa!12345','nw755162@gmail.com', '0', '0','2023-04-18 13:32:52.667')

  insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('iii','iii','Aa!12345','nw755162@gmail.com', '0', '0','2023-05-18 13:32:52.667')

  insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('jjj','jjj','Aa!12345','nw755162@gmail.com', '0', '0','2023-06-18 13:32:52.667')

  insert into member (memberId, name,password, email, permission, haveImg,registerTime )
 values ('kkk','kkk','Aa!12345','nw755162@gmail.com', '0', '0','2023-06-18 13:32:52.667')

/* ----------------------------------- */
USE topic2;

CREATE TABLE field(
fieldName nvarchar(8) CONSTRAINT field_fieldName_pk PRIMARY KEY,
);

insert into field values ('文書');
insert into field values ('生活');
insert into field values ('設計');
insert into field values ('資訊');
insert into field values ('影視');
insert into field values ('顧問');

CREATE TABLE project(
pjID int CONSTRAINT pk_project_pjID PRIMARY KEY IDENTITY(1000,1),
pjClass nvarchar(8) NOT NULL,
fieldName nvarchar(8) NOT NULL,
pjName nvarchar(120) NOT NULL,
memberPK int,
pjInstruction nvarchar(2000),
pjServerLocation nvarchar(40),
pjPrice varchar(10),
pjExCompletionDate Datetime,
pjExecutionTime nvarchar(20),
pjUploadDate Datetime,
pjLastUpdate DateTime,
pjStatus nvarchar(20),
CONSTRAINT fk_project_memberPK FOREIGN KEY (memberPK) REFERENCES member(memberPk),
CONSTRAINT fk_project_fieldName FOREIGN KEY (fieldName) REFERENCES field(fieldName)
);

CREATE TABLE evaluation(
evID int CONSTRAINT pk_evaluation_evID PRIMARY KEY IDENTITY(1000,1),
pjID int,
memberPK int,
servicePK int,
evDealPrice int,
evCompletionDate datetime,
evClientEV int,
evCLientComment nvarchar(800),
CONSTRAINT fk_evaluation_pjID FOREIGN KEY (pjID) REFERENCES project(pjID),
CONSTRAINT fk_evaluation_memberPK FOREIGN KEY (memberPK) REFERENCES member(memberPk),
CONSTRAINT fk_evaluation_servicePK FOREIGN KEY (servicePK) REFERENCES member(memberPk)
);

CREATE TABLE pjImg(
imgID int CONSTRAINT pk_pjImg_ImgID PRIMARY KEY IDENTITY(1000,1),
pjID int,
pjImg varbinary(MAX)
CONSTRAINT fk_pjImg_pjID FOREIGN KEY (pjID) REFERENCES project(pjID)
);

/* -------------------------------------------- */


create table testCenter (
testPk int not null identity(1,1) primary key,
testId varchar(32),
examinationQuestion varchar(MAX),
field varchar(100),
options varchar(1000),
options2 varchar(1000),
options3 varchar(1000),
options4 varchar(1000),
answer varchar(100),
answer2 varchar(100),
answer3 varchar(100),
answer4 varchar(100),
)

	create table survey(
	surveyPk int not null identity(1,1) primary key,
	survey varchar(100),
	surveytype varchar(100),
	welcometext varchar(MAX),
	endtext varchar(MAX),
testImage varbinary(max),
shelves varchar(100),
	)

create table gallery(

imagePk int not null identity(1,1) primary key,

imageNumber  varchar(32),

testImage varbinary(max),

)

create table tester(

id int primary key identity(1,1) not null,

testername varchar(32),

)

create table totalScore(

id int primary key identity(1,1) not null,

imageNumber  varchar(32),
memberId varchar(32), 
inputRadio varchar(1000),
inputRadio2 varchar(1000),
fraction varchar(100),

testImage varbinary(max),

fkimgid int references gallery(imagePk ),

fkuserid int references tester(id),
)

insert into tester(testername) values ('123');


/* -------------------------------------------- */

CREATE TABLE spacerental(
	spaceNo int IDENTITY(3001,1) NOT NULL PRIMARY KEY,
	spaceName nvarchar(20) NOT NULL,
	city nvarchar(10) NULL,
	address nvarchar(20) NULL,
	accommodate int NULL,
	spaceType nvarchar(20) NULL,
	price int NULL,
	phone nvarchar(20) NULL,
	email varchar(50) NULL,
	facility_1 nvarchar(MAX) NULL,
	intro nvarchar(100) NULL,
	pic varbinary(MAX) NULL,
	status int NULL DEFAULT 1,
);
	


CREATE TABLE spaceorder(
	orderId int IDENTITY(100,1) NOT NULL PRIMARY KEY,
	spaceNo int,
	memberId varchar(32),
	orderDate date,
	bookTime datetime DEFAULT GETDATE(),
	payment varchar(20),
	status varchar(20),
	remarks nvarchar(MAX),
	cPerson nvarchar(20),
	contact nvarchar(20)
);
/* -------------------------------------------- */
USE Topic2;

CREATE TABLE article(

	articleId INT PRIMARY KEY IDENTITY(0,1),
	memberPk INT NOT NULL,
	updateTime DATETIME NOT NULL,
	topicName NVARCHAR(MAX) NOT NULL,	
	title NVARCHAR(MAX) NOT NULL,
	content NVARCHAR(MAX) NOT NULL,
	status NVARCHAR(MAX) NOT NULL,
	thumbUp INT,
	unlike INT,
	views INT,
	cover VARBINARY,

	FOREIGN KEY (memberPk) REFERENCES member(memberPk)

);

CREATE TABLE comment(

	commentId INT IDENTITY(5000,1) PRIMARY KEY,
	articleId INT NOT NULL,
	memberPk INT NOT NULL,
	updateTime DATETIME NOT NULL,
	content NVARCHAR(MAX) NOT NULL,
	status NVARCHAR(MAX) NOT NULL,
	thumbUp INT,
	unlike INT,
	replyId INT,

	FOREIGN KEY (articleId) REFERENCES article(articleId),
	FOREIGN KEY (memberPk) REFERENCES member(memberPk)

);

CREATE TABLE status(

	statusId INT PRIMARY KEY IDENTITY(0,1),
	articleId INT NOT NULL,
	memberPk INT NOT NULL,
	reported BIT,
	favorite BIT,
	thumbUp BIT,
	unlike BIT,

);

/*------------------------------------------------------------------------------*/


create table course (
	courseId int not null identity(1,1) primary key,
	courseName nvarchar(50),
	category nvarchar(20),
	teacher nvarchar(20),
	price int,
	courseType nvarchar(20),
	startDate nvarchar(30),
	endDate nvarchar(30),
	startTime nvarchar(30),
	endTime nvarchar(30),
	image varbinary(MAX)
);

create table orders(
	orderNo int not null primary key identity(1,1),
	memberPk int not null,
	name varchar(32),
	email varchar(64),
	totalPrice money,
	orderDate datetime,
	foreign key (memberPk) REFERENCES member(memberPk)
);

create table orderItem(
	seqno int not null primary key identity(1,1),
	orderNo int not null,
	courseId int not null,
	courseName nvarchar(50) not null,
	unitPrice money ,
	amount int,
	foreign key (orderNo) REFERENCES orders(orderNo),
	foreign key (courseId) REFERENCES course(courseId)
);

insert into course(courseName,category,teacher,price,courseType,startDate,endDate,startTime,endTime) values('前端入門(一)HTML&CSS','程式','Mary','1999','實體','2022-11-20','2022-12-20','19:00','21:00');
insert into course(courseName,category,teacher,price,courseType,startDate,endDate,startTime,endTime) values('前端入門(二)Javascript','程式','Mary','2500','實體','2022-11-20','2022-12-20','19:00','21:00');
insert into course(courseName,category,teacher,price,courseType,startDate,endDate,startTime,endTime) values('多益900分全攻略','語言','Mary','2500','實體','2022-11-20','2022-12-20','19:00','21:00');