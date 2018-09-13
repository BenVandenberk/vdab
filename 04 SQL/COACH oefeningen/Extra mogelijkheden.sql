SELECT *
FROM films f INNER JOIN genres g
ON f.genreId = g.genreId
WHERE g.genre IN ('griezel', 'thriller')
AND titel NOT LIKE '%kill%'
AND titel NOT LIKE '%blood%';

SELECT k.naam, k.voornaam, f.titel
FROM films f INNER JOIN verhuringen v
ON f.filmId = v.filmId INNER JOIN klanten k
ON v.klantId = k.klantId
ORDER BY k.naam, f.titel;

SELECT genre, SUM(voorraad) as voorraad
FROM films f INNER JOIN genres g
ON f.genreId = g.genreId
GROUP BY genre;

SELECT *, 'Zeer goede klant' AS bericht
FROM klanten k
WHERE totaalGehuurd > 250
UNION
SELECT *, 'Goede klant' AS bericht
FROM klanten k
WHERE totaalGehuurd <= 250 AND totaalGehuurd >= 150
UNION
SELECT *, 'Slechte klant' AS bericht
FROM klanten k
WHERE totaalGehuurd < 150;

SELECT *
FROM films
WHERE prijs = (SELECT max(prijs) FROM films);