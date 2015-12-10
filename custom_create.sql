Create database if not exists customtask;
CREATE TABLE if not exists customtask.Teams(
	Id INTEGER NOT NULL AUTO_INCREMENT,
    Team VARCHAR(50) NOT NULL,
    Members VARCHAR(100) NOT NULL,
    PRIMARY KEY(Id)
);

CREATE TABLE if not exists customtask.Tournaments(
	Id INTEGER NOT NULL AUTO_INCREMENT,
    Tournament VARCHAR(100) NOT NULL,
    Starttime DATETIME NOT NULL,
    Endttime DATETIME NOT NULL,
    PRIMARY KEY(Id)   
);

CREATE TABLE if not exists customtask.Places(
	Id INTEGER NOT NULL AUTO_INCREMENT,
    TeamId INTEGER NOT NULL,
    TournamentId INTEGER NOT NULL,
    Place INTEGER,
	FOREIGN KEY (TeamId) REFERENCES Teams(Id),
	FOREIGN KEY(TournamentId) REFERENCES Tournaments(Id),
	PRIMARY KEY(Id)
);

