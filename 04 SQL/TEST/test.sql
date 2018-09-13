/*--- 1 ---*/

SELECT *
FROM klanten
WHERE adres LIKE '%laan%' AND faxnummer IS NOT NULL;

/*--- 2 ---*/

SELECT YEAR(vertrekdatum) AS jaar, MONTH(vertrekdatum) AS maand, COUNT(*) AS aantalReizigers
FROM reizen
GROUP BY jaar, maand
ORDER BY jaar, maand;

/*--- 3 ---*/

UPDATE reizen
SET prijsPerPersoon = prijsPerPersoon * 1.01
WHERE bestemmingscode IN (SELECT bestemmingscode FROM bestemmingen WHERE werelddeel LIKE 'azie');

/*--- 4 ---*/

SELECT r.bestemmingscode, werelddeel, land, plaats
FROM reizen r INNER JOIN bestemmingen b
ON r.bestemmingscode = b.bestemmingscode
GROUP BY r.bestemmingscode, werelddeel, land, plaats
HAVING COUNT(*) = 1;

/*--- 5 ---*/

SELECT provincie, gemeente, COUNT(*) AS aantal_klanten
FROM klanten k INNER JOIN plaatsen p
ON k.plaatsId = p.plaatsId
GROUP BY provincie, gemeente
HAVING aantal_klanten = (
	SELECT max(aantal_klanten)
	FROM (
		SELECT k.plaatsId, COUNT(*) AS aantal_klanten
		FROM klanten k INNER JOIN plaatsen p
		ON k.plaatsId = p.plaatsId
		GROUP BY plaatsId
        ) AS overzicht
);

/*--- 6 ---*/

SELECT firma
FROM klanten
WHERE firma LIKE '%.%.%';

/*--- 7 ---*/

INSERT INTO klanten
(familienaam, voornaam, adres, plaatsId, geslacht, geboorteDatum, klanttype, telefoonnummer, gsm, emailadres, rekening)
SELECT familienaam, voornaam, adres, plaatsId, 'v', geboortedatum, 1, telefoonnummer, gsm, emailadres, rekeningnummer
FROM personeelsleden
WHERE familienaam = 'quaghebuur' AND voornaam = 'mieke';

UPDATE constanten
SET laatsteKlantnummer = (SELECT klantnummer FROM klanten WHERE familienaam = 'quaghebuur' AND voornaam = 'mieke');

/*--- 8 ---*/

SELECT werelddeel, land, plaats, prijsPerPersoon
FROM reizen r INNER JOIN bestemmingen b
ON r.bestemmingscode = b.bestemmingscode
WHERE prijsPerPersoon = (
	SELECT max(prijsPerPersoon)
	FROM reizen r2 INNER JOIN bestemmingen b2
	ON r2.bestemmingscode = b2.bestemmingscode
	GROUP BY b2.werelddeel
	HAVING b2.werelddeel = b.werelddeel
);

/*--- 9 ---*/

CREATE VIEW ReisbestemmingsGegevens
AS
SELECT r.*, werelddeel, land, plaats
FROM reizen r INNER JOIN bestemmingen b
ON r.bestemmingscode = b.bestemmingscode;

/*--- 10 ---*/

SELECT r.*
FROM reizen r LEFT JOIN boekingen b
ON r.reisnummer = b.reisnummer
WHERE b.boekingnummer IS NULL;