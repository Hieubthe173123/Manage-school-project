create database SchoolManage
USE SchoolManage
GO

-- Table: Parent
CREATE TABLE [Parent](
    [pid] INT NOT NULL PRIMARY KEY Identity(10000,1),
    [pname] nVARCHAR(255) NULL,
    [gender] bit NULL,
    [dob] DATE NULL,
    [phoneNumber] VARCHAR(15) NULL,
    [IDCard] VARCHAR(20) NULL,
    [Address] nVARCHAR(255) NULL,
    [Email] nVARCHAR(100) NULL,
    [NickName] nVARCHAR(50) NULL
);
-- Table: Lecturers
CREATE TABLE [Lecturers](
    [lid] INT NOT NULL PRIMARY KEY identity(20000,1),
    [lname] nVARCHAR(100) NULL,
    [gender] bit NULL,
    [dob] DATE NULL,
    [phoneNumber] VARCHAR(15) NULL,
    [IDCard] VARCHAR(20) NULL,
    [Address] nVARCHAR(255) NULL,
    [Email] nVARCHAR(100) NULL,
    [NickName] nVARCHAR(50) NULL
);

-- Table: Age
CREATE TABLE [dbo].[Age](
    [ageid] INT NOT NULL PRIMARY KEY identity(1,1),
    [aname] nVARCHAR(50) NULL
);


-- Table: Room
CREATE TABLE [Room](
    [rid] INT NOT NULL PRIMARY KEY identity (1,1),
    [rname] nVARCHAR(50) NULL
);

-- Table: Class
CREATE TABLE [Class](
    [classID] INT NOT NULL PRIMARY KEY identity(1,1),
    [clname] nVARCHAR(100) NULL,
    [lid] INT not NULL,
    [rid] INT not NULL,
    [ageid] INT not NULL,
    FOREIGN KEY ([lid]) REFERENCES [Lecturers]([lid]),
    FOREIGN KEY ([rid]) REFERENCES [Room]([rid]),
    FOREIGN KEY ([ageid]) REFERENCES [Age]([ageid])
);

-- Table: Student
CREATE TABLE [Student](
    [stuid] INT NOT NULL PRIMARY KEY identity(1,1),
    [sname] nVARCHAR(100) NULL,
    [age] INT NULL,
    [dob] DATE NULL,
    [gender] bit NULL,
    [address] VARCHAR(255) NULL,
    [pid] INT not NULL,
    [classID] INT not NULL,
    FOREIGN KEY ([pid]) REFERENCES [Parent]([pid]),
    FOREIGN KEY ([classID]) REFERENCES [Class]([classID])
);

-- Table: SchoolYear
CREATE TABLE [SchoolYear](
    [yid] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [dateFrom] DATE NULL,
    [dateEnd] DATE NULL,
);

-- Table: Session
CREATE TABLE [Session](
    [sid] INT NOT NULL PRIMARY KEY identity(1,1),
    [activity] nVARCHAR(100) NULL,
    [ageid] INT not NULL,
    FOREIGN KEY ([ageid]) REFERENCES [Age]([ageid]),
	yid int not null,
	FOREIGN KEY ([yid]) REFERENCES [SchoolYear]([yid])

);

-- Table: Account
CREATE TABLE [Account](
    [aid] INT NOT NULL PRIMARY KEY identity(1,1),
    [username] VARCHAR(50) NOT NULL,
    [password] VARCHAR(50) NOT NULL,
    [role] int not NULL,
    [pid] INT not NULL,
    [lid] INT not NULL,
    FOREIGN KEY ([pid]) REFERENCES [Parent]([pid]),
    FOREIGN KEY ([lid]) REFERENCES [Lecturers]([lid])
);

-- Table: ActivityTime
CREATE TABLE [ActivityTime](
    [atid] INT NOT NULL PRIMARY KEY identity(1,1),
    [classID] INT not NULL,
    [Date] DATE NULL,
    [Time] nvarchar(20) NULL,
    [activity] nVARCHAR(100) NULL,
    [isFix] BIT NULL,
    [sid] INT not NULL,
    FOREIGN KEY ([classID]) REFERENCES [Class]([classID]),
    FOREIGN KEY ([sid]) REFERENCES [Session]([sid])
);

-- Table: Class_Session
CREATE TABLE [Class_Session](
    [csid] INT NOT NULL PRIMARY KEY identity(1,1),
    [classID] INT not NULL,
    [sid] INT not NULL,
    [Date] DATE NULL,
    FOREIGN KEY ([classID]) REFERENCES [Class]([classID]),
    FOREIGN KEY ([sid]) REFERENCES [Session]([sid])
);

-- Table: FeedBack
CREATE TABLE [FeedBack](
    [fid] INT NOT NULL PRIMARY KEY identity(1,1),
    [ftitle] nVARCHAR(255) NULL,
    [fcontent] nvarchar(255) NULL,
    [ftimeFeedback] datetime NOT NULL,
    [stuid] INT not NULL,
    FOREIGN KEY ([stuid]) REFERENCES [Student]([stuid])
);

-- Table: Food
CREATE TABLE [Food](
    [fid] INT NOT NULL PRIMARY KEY identity(1,1),
    [fname] nVARCHAR(100) NULL,
    [calo] INT NULL
);

-- Table: MealTime
CREATE TABLE [MealTime](
    [mealID] INT NOT NULL PRIMARY KEY identity(1,1),
    [mealName] nVARCHAR(50) NULL
);

-- Table: Menu
CREATE TABLE [Menu](
    [mid] INT NOT NULL PRIMARY KEY identity (1,1),
    [fid] INT not NULL,
    [ageid] INT not NULL,
    [date] DATE NULL,
    [mealid] INT not NULL,
    FOREIGN KEY ([fid]) REFERENCES [Food]([fid]),
    FOREIGN KEY ([ageid]) REFERENCES [Age]([ageid]),
    FOREIGN KEY ([mealid]) REFERENCES [MealTime]([mealID])
);





