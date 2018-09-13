INSERT INTO klanten
(naam, voornaam, adres, postcode, woonplaats, totaalGehuurd, datumLid, lidgeld)
VALUES
('Vandenberk', 'Ben', 'Waversebaan 145 bus 1', '3001', 'Heverlee', '12', '2016-04-05', 0);

UPDATE films
SET prijs = prijs * 1.1
WHERE maatschappijId IN (SELECT maatschappijId FROM maatschappijen WHERE maatschappijCode = 'VH');

CREATE TABLE thrillers
AS
SELECT f.*
FROM films f INNER JOIN genres g
ON f.genreId = g.genreId
WHERE g.genre LIKE 'thriller';

ALTER TABLE maatschappijen
ADD COLUMN mailadres varchar(40) NOT NULL;

ALTER TABLE films
ADD CONSTRAINT f_genreId FOREIGN KEY(genreId) REFERENCES genres(genreId); 

ALTER TABLE films
ADD CONSTRAINT f_maatschappijId FOREIGN KEY(maatschappijId) REFERENCES maatschappijen(maatschappijId); 

ALTER TABLE verhuringen
ADD CONSTRAINT f_klantId FOREIGN KEY(klantId) REFERENCES klanten(klantId);

ALTER TABLE verhuringen
ADD CONSTRAINT f_filmId FOREIGN KEY(filmId) REFERENCES films(filmId);