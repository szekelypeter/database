INSERT INTO teams(Team,Members)
			VALUES('Elements', 'Jwaow, dexter, Froggen, Tabbz, Nyph');
INSERT INTO teams(Team,Members)
			VALUES('Gambit Gaming', 'Cabochard, Diamondprox, Betsy, FORG1VEN, Edward');
INSERT INTO teams(Team,Members)
			VALUES('Unicorns of Love', 'Vizicsacsi, Gilius,PowerOfEvil, Vardags, Hylissang');

/*DD-MM-YYYY HH:MM:SS*/
INSERT INTO tournaments(Tournament,Starttime,Endttime)
			VALUES('2014 EU LCS Spring', '2014.01.14 18:30:00','2014.04.03 21:00:00');
INSERT INTO tournaments(Tournament,Starttime,Endttime)
			VALUES('2014 EU LCS Summer', '2014.05.20 16:30:00','2014.07.31 21:00:00');
INSERT INTO tournaments(Tournament,Starttime,Endttime)
			VALUES('2015 EU LCS Spring', '2015.01.22 18:00:00','2015.03.27 23:00:00');
INSERT INTO tournaments(Tournament,Starttime,Endttime)
			VALUES('2015 EU LCS Summer', '2015.05.28 18:00:00','2015.07.24 22:00:00');
            
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('1','1','3');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('2','1','5');
INSERT INTO places(TeamId,TournamentId)
			VALUES('3','1');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('1','2','1');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('2','2','7');
INSERT INTO places(TeamId,TournamentId)
			VALUES('3','2');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('1','3','7');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('2','3','4');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('3','3','5');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('1','4','7');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('2','4','8');
INSERT INTO places(TeamId,TournamentId,Place)
			VALUES('3','4','4');
