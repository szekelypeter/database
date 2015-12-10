Create database if not exists codecool;
CREATE TABLE if not exists codecool.Statuses(
	Id INTEGER NOT NULL AUTO_INCREMENT,
    Val VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE if not exists codecool.Users(
	Id INTEGER NOT NULL AUTO_INCREMENT,
    Real_name VARCHAR(100) NOT NULL,
    Birthdate DATETIME NOT NULL,
    Introduction VARCHAR(500),
    Avatar VARCHAR(1000),
    Email VARCHAR(150),
    PRIMARY KEY(Id)
   
);

CREATE TABLE if not exists codecool.Meetups(
	Id INTEGER NOT NULL AUTO_INCREMENT,
	StartTime DATETIME NOT NULL,
    Location VARCHAR(150) NOT NULL,
    Topic VARCHAR(150) NOT NULL,
    Description VARCHAR(1000) NOT NULL,
    PRIMARY KEY(Id)
    
);

CREATE TABLE if not exists codecool.MeetupRegistrations(
	Id INTEGER NOT NULL AUTO_INCREMENT,
    StatusId INTEGER NOT NULL,
    MeetupsId INTEGER NOT NULL,
    UsersId INTEGER NOT NULL,
	FOREIGN KEY (StatusId) REFERENCES Statuses(Id),
	FOREIGN KEY(MeetupsId) REFERENCES Meetups(Id),
	FOREIGN KEY(UsersId) REFERENCES Users(Id),
	PRIMARY KEY(Id)
);
