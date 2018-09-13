/*--- GEGEVENS SELECTEREN ---*/

/*--- 1 ---*/

SELECT *
FROM bestemmingen
WHERE werelddeel LIKE 'afrika'
ORDER BY land, plaats;

/*--- 2 ---*/

SELECT *
FROM klanten
WHERE gsm IS NULL;

/*--- 3 ---*/

SELECT voornaam, familienaam, adres, postcode, gemeente, provincie, telefoonnummer, faxnummer, gsm, emailadres
FROM klanten k INNER JOIN plaatsen p
ON k.plaatsId = p.plaatsId
WHERE provincie LIKE 'West%'
ORDER BY gemeente, familienaam;

/*--- 4 ---*/

SELECT werelddeel, avg(prijsPerPersoon) as gem
FROM reizen r INNER JOIN bestemmingen b
ON r.bestemmingscode = b.bestemmingscode
GROUP BY werelddeel;

SELECT werelddeel, avg(betaaldBedrag) as gem
FROM reizen r INNER JOIN bestemmingen b
ON r.bestemmingscode = b.bestemmingscode INNER JOIN boekingen boe
ON r.reisnummer = boe.reisnummer
GROUP BY werelddeel;

/*--- 5 ---*/

SELECT r.reisnummer, werelddeel, land, plaats, vertrekdatum, aantalDagen, COUNT(*) as aantal_boekingen, SUM(aantalVolwassenen) as aantal_volwassenen, SUM(aantalKinderen) as aantal_kinderen
FROM reizen r INNER JOIN bestemmingen b
ON r.bestemmingscode = b.bestemmingscode INNER JOIN boekingen boe
ON r.reisnummer = boe.reisnummer
GROUP BY r.reisnummer, werelddeel, land, plaats, vertrekdatum, aantalDagen;

/*--- 6 ---*/

SELECT *
FROM reizen
WHERE aantalDagen = (SELECT max(aantalDagen) FROM reizen);

/*--- 7 ---*/

SELECT boekingnummer, boekdatum, k.klantnummer, familienaam, voornaam, (aantalVolwassenen * prijsPerPersoon) - betaaldBedrag AS teBetalen
FROM reizen r INNER JOIN boekingen b
ON r.reisnummer = b.reisnummer INNER JOIN klanten k
ON b.klantnummer = k.klantnummer;

/*--- 8 ---*/

SELECT b.klantNummer, familienaam, voornaam, 'Groot gezin' AS gezin
FROM klanten k INNER JOIN boekingen b
ON k.klantnummer = b.klantnummer
GROUP BY b.klantnummer
HAVING max(aantalKinderen) >= 3
UNION
SELECT b.klantNummer, familienaam, voornaam, 'Modaal gezin' AS gezin
FROM klanten k INNER JOIN boekingen b
ON k.klantnummer = b.klantnummer
GROUP BY b.klantnummer
HAVING max(aantalKinderen) > 0 AND max(aantalKinderen) < 3
UNION
SELECT b.klantNummer, familienaam, voornaam, 'Kinderloos' AS gezin
FROM klanten k INNER JOIN boekingen b
ON k.klantnummer = b.klantnummer
GROUP BY b.klantnummer
HAVING max(aantalKinderen) = 0
UNION
SELECT distinct k.klantNummer, familienaam, voornaam, 'Kinderloos' AS gezin
FROM klanten k LEFT JOIN boekingen b
ON k.klantnummer = b.klantnummer
WHERE b.klantnummer IS NULL;

/*--- 9 ---*/

SELECT familienaam, voornaam, boekingnummer
FROM klanten k LEFT JOIN boekingen b
ON k.klantnummer = b.klantnummer;

/*--- GEGEVENS AANPASSEN EN BEHEREN ---*/

/*--- 1 ---*/

SELECT plaatsId
FROM plaatsen
WHERE gemeente LIKE 'heverlee';

INSERT INTO plaatsen
(postcode, gemeente, provincie)
VALUES
('3001', 'Heverlee', 'Vlaams-Brabant');

INSERT INTO personeelsleden
(familienaam, voornaam, adres, plaatsId, emailadres, geboortedatum)
VALUES
('Vandenberk', 'Ben', 'Waversebaan 145 bus 1', 31, 'ben.vandenberk@hotmail.com', '1990-07-17');

/*--- 2 ---*/

CREATE TABLE uitdienst
AS
SELECT *
FROM personeelsleden
WHERE inDienst = false;

DELETE FROM personeelsleden
WHERE inDienst = false;

/*--- 3 ---*/

UPDATE reizen
SET prijsPerPersoon = prijsPerPersoon * 1.02
WHERE bestemmingscode IN (SELECT bestemmingscode FROM bestemmingen WHERE werelddeel LIKE 'centraal%');

/*--- 4 ---*/

