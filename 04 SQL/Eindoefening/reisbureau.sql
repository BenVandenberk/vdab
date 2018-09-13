-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Gegenereerd op: 23 mei 2016 om 15:23
-- Serverversie: 5.6.26-log
-- PHP-versie: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `reisbureau`
--
DROP Database if exists `reisbureau`;
CREATE DATABASE IF NOT EXISTS `reisbureau` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `reisbureau`;

-- --------------------------------------------------------

DROP TABLE IF EXISTS `plaatsen`;
CREATE TABLE IF NOT EXISTS `plaatsen` (
  `plaatsId` INT NOT NULL AUTO_INCREMENT,
  `postcode` varchar(50)  NOT NULL,
  `gemeente` varchar(255)  NOT NULL,
  `provincie` varchar(255)  default NULL,
  KEY `plaatsId` (`plaatsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


insert into plaatsen (plaatsid, postcode,gemeente,provincie) values 
(1, '8000','Brugge','West-Vlaanderen'),
(2, '9300','Aalst','Oost-Vlaanderen'), 
(3, '2300','Turnhout','Antwerpen'),
(4, '3500','Hasselt','Limburg'),
(5, '2000','Antwerpen','Antwerpen'),
(6, '3800','St-Truiden','Limburg'),
(7, '8800','Roeselare','West-Vlaanderen'),
(8, '9800','Deinze','Oost-Vlaanderen'),
(9, '8810','Lichtervelde','West-Vlaanderen'),
(10, '2200','Herentals','Antwerpen'),
(11, '8500','Kortrijk','West-Vlaanderen'),
(12, '3700','Tongeren','Limburg'),
(13, '9000','Gent','Oost-Vlaanderen'),
(14, '8400','Oostende','West-Vlaanderen'),
(15, '3600','Genk','Limburg'),
(16, '8490','Jabbeke', 'West-Vlaanderen'),
(17, '8320','Assebroek','West-Vlaanderen'),
(18, '8730','Oedelem','West-Vlaanderen'),
(19, '2950','Kapellen','Antwerpen'),
(20, '2140','Borgerhout', 'Antwerpen'),
(21, '2110','Wijnegem', 'Antwerpen'),
(22, '2100','Deurne', 'Antwerpen'),
(23, '3920','Lommel', 'Limburg'),
(24, '3680','Maaseik', 'Limburg'),
(25, '3630','Maasmechelen', 'Limburg'),
(26, '3150','Haacht', 'Vlaams-Brabant'),
(27, '3000','Leuven', 'Vlaams-Brabant'),
(28, '3300','Tienen', 'Vlaams-Brabant'),
(29, '9000','Oostakker', 'Oost-Vlaanderen'),
(30, '9000','Langerbrugge','Oost-Vlaanderen');

--
-- Tabelstructuur voor tabel `bestemmingen`
--

DROP TABLE IF EXISTS `bestemmingen`;
CREATE TABLE IF NOT EXISTS `bestemmingen` (
  `bestemmingscode` varchar(5) NOT NULL,
  `werelddeel` varchar(20) DEFAULT NULL,
  `land` varchar(25) DEFAULT NULL,
  `plaats` varchar(25) DEFAULT NULL,
  KEY `BestemmingsID` (`bestemmingscode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `bestemmingen`
--

INSERT INTO `bestemmingen` (`bestemmingscode`, `werelddeel`, `land`, `plaats`) VALUES
('VERAC', 'Noord Amerika', 'Mexico', 'Veracruz'),
('ALANY', 'West Europa', 'Turkije', 'Alanya'),
('ALEXA', 'Afrika', 'Egypte', 'Alexandrie'),
('ANTAL', 'West Europa', 'Turkije', 'Antalya'),
('BAGHD', 'Azie', 'Irak', 'Baghdad'),
('BALI', 'Azie', 'Indonesie', 'Bali (Kuta)'),
('BANGK', 'Azie', 'Thailand', 'Bangkok'),
('BARCE', 'West Europa', 'Spanje', 'Barcelona'),
('BASRA', 'Azie', 'Irak', 'Basra'),
('BENID', 'West Europa', 'Spanje', 'Benidorm'),
('BOGOT', 'Zuid Amerika', 'Colombia', 'Bogota'),
('BUENO', 'Zuid Amerika', 'Argentinie', 'Buenos Aires'),
('CAIRO', 'Afrika', 'Egypte', 'Cairo'),
('CALGA', 'Noord Amerika', 'Canada', 'Calgary'),
('CARAC', 'Zuid Amerika', 'Venezuela', 'Caracas'),
('CARTA', 'Zuid Amerika', 'Colombia', 'Cartagena'),
('CASSA', 'Afrika', 'Marokko', 'Cassablanca'),
('CHIAN', 'Azie', 'Thailand', 'Chiangmai'),
('CORDO', 'Zuid Amerika', 'Argentinie', 'Cordoba'),
('CORSI', 'West Europa', 'Frankrijk', 'Corsica'),
('HAVA', 'Centraal Amerika', 'Cuba', 'Havanna'),
('DALLA', 'Noord Amerika', 'Verenigde Staten', 'Dallas'),
('DROME', 'West Europa', 'Frankrijk', 'Drome'),
('DUSSD', 'West Europa', 'Duitsland', 'Dusseldorf'),
('ELALA', 'Afrika', 'Egypte', 'El''Alamein'),
('GERON', 'West Europa', 'Spanje', 'Gerona'),
('GITES', 'West Europa', 'Frankrijk', 'Gites'),
('GRANC', 'West Europa', 'Spanje', 'Gran Canaria'),
('HELSI', 'West Europa', 'Finland', 'Helsinki'),
('ISTAN', 'West Europa', 'Turkije', 'Istanbul'),
('JAKAR', 'Azie', 'Indonesie', 'Jakarta'),
('KIRKU', 'Azie', 'Irak', 'Kirkuk'),
('LIMA', 'Zuid Amerika', 'Peru', 'Lima'),
('MADRI', 'West Europa', 'Spanje', 'Madrid'),
('MANIL', 'Azie', 'Filippijnen', 'Manila'),
('MARDE', 'Zuid Amerika', 'Argentinie', 'Mar del Plata'),
('MEDAN', 'Azie', 'Indonesie', 'Medan'),
('MEXIC', 'Noord Amerika', 'Mexico', 'Mexico'),
('MIAMI', 'Noord Amerika', 'Verenigde Staten', 'Miami'),
('MOIRA', 'West Europa', 'Spanje', 'Moirara'),
('MONTE', 'Zuid Amerika', 'Uruguay', 'Montevideo'),
('MONTR', 'Noord Amerika', 'Canada', 'Montreal'),
('MOSUL', 'Azie', 'Irak', 'Mosul'),
('NEWOR', 'Noord Amerika', 'Verenigde Staten', 'New Orleans'),
('OTTAW', 'Noord Amerika', 'Canada', 'Ottawa'),
('PARIJ', 'West Europa', 'Frankrijk', 'Parijs'),
('PATTA', 'Azie', 'Thailand', 'Pattaya'),
('PEKIN', 'Azie', 'China', 'Peking'),
('RABAT', 'Afrika', 'Marokko', 'Rabat'),
('RECIF', 'Zuid Amerika', 'Brazilie', 'Recife'),
('RIO', 'Zuid Amerika', 'Brazilie', 'Rio de Janeiro'),
('SALOU', 'West Europa', 'Spanje', 'Salou'),
('SANFR', 'Noord Amerika', 'Verenigde Staten', 'San Francisco'),
('SANPA', 'Azie', 'Filippijnen', 'San Pablo'),
('SAOPA', 'Zuid Amerika', 'Brazilie', 'Sao Paulo'),
('SURUB', 'Azie', 'Indonesie', 'Surubaya'),
('TANGE', 'Afrika', 'Marokko', 'Tanger'),
('THEBE', 'Afrika', 'Egypte', 'Thebes');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boekingen`
--

DROP TABLE IF EXISTS `boekingen`;
CREATE TABLE IF NOT EXISTS `boekingen` (
  `boekingnummer` int(11) NOT NULL auto_increment,
  `klantnummer` int(11) NOT NULL,
  `reisnummer` int(11) NOT NULL,
  `boekdatum` datetime NOT NULL,
  `aantalVolwassenen` tinyint(3) unsigned DEFAULT NULL,
  `aantalKinderen` tinyint(3) unsigned DEFAULT '0',
  `betaaldBedrag` decimal DEFAULT NULL,
  `annuleringsverzekering` tinyint(1) DEFAULT '0',
  `betaalwijze` tinyint(3) unsigned DEFAULT '0',
  KEY `boekingnummer` (`boekingnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `boekingen`
--

INSERT INTO `boekingen` (`boekingnummer`, `klantnummer`, `reisnummer`, `boekdatum`, `aantalVolwassenen`, `aantalKinderen`, `betaaldBedrag`, `annuleringsverzekering`, `betaalwijze`) VALUES
(984329, 100156220, 98402, '2015-03-22 00:00:00', 2, 0, 1300, 1, 3),
(984330, 100300470, 98392, '2015-03-22 00:00:00', 1, 2, 300, 0, 3),
(984331, 100984470, 90390, '2015-03-22 00:00:00', 2, 1, 2300, 1, 2),
(984332, 100183500, 90378, '2015-03-22 00:00:00', 2, 0, 0, 0, 1),
(984333, 100300470, 94368, '2015-03-22 00:00:00', 1, 0, 2000, 0, 1),
(984334, 100300160, 94389, '2015-03-23 00:00:00', 2, 0, 4500, 0, 3),
(984335, 100283350, 98387, '2015-03-23 00:00:00', 2, 2, 0, 0, 3),
(984336, 100183500, 92396, '2015-03-23 00:00:00', 1, 0, 2500, 0, 3),
(984337, 100283560, 92398, '2015-03-24 00:00:00', 2, 0, 3000, 0, 3),
(984338, 100300160, 90390, '2015-03-26 00:00:00', 5, 3, 4500, 0, 2),
(984339, 100432890, 98388, '2015-03-27 00:00:00', 4, 5, 0, 0, 3),
(984400, 100103620, 94379, '2015-03-28 00:00:00', 2, 0, 3200, 1, 3),
(984401, 100142310, 94379, '2015-04-01 00:00:00', 4, 1, 4500, 0, 2),
(984402, 100349550, 96395, '2015-04-01 00:00:00', 2, 0, 0, 0, 1),
(984403, 100156220, 90377, '2015-04-02 00:00:00', 3, 1, 4200, 0, 1),
(984404, 100200340, 98392, '2015-04-02 00:00:00', 2, 0, 0, 0, 1),
(984405, 100953370, 98400, '2015-04-03 00:00:00', 2, 1, 1000, 0, 2),
(984406, 100733820, 92380, '2015-04-03 00:00:00', 4, 0, 0, 0, 2),
(984407, 100984499, 98402, '2015-04-04 00:00:00', 2, 3, 2300, 0, 2),
(984409, 100483880, 98404, '2015-04-04 00:00:00', 2, 1, 0, 0, 2),
(984410, 100899230, 98386, '2015-04-04 00:00:00', 3, 1, 0, 0, 2),
(984411, 100933730, 92396, '2015-04-05 00:00:00', 1, 0, 2500, 0, 3),
(984412, 100546738, 92396, '2015-04-05 00:00:00', 1, 0, 2500, 0, 3),
(984413, 100142310, 95405, '2015-03-31 00:00:00', 2, 2, 500, 1, 3),
(984414, 100984470, 95405, '2015-03-31 00:00:00', 1, 0, 1200, 1, 1),
(984415, 100984493, 95405, '2015-03-31 00:00:00', 2, 1, 2000, 1, 2),
(984416, 100984474, 95405, '2015-03-31 00:00:00', 2, 0, 500, 1, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `constanten`
--

DROP TABLE IF EXISTS `constanten`;
CREATE TABLE IF NOT EXISTS `constanten` (
  `constantId` int(11) NOT NULL auto_increment,
  `annuleerPerc` decimal DEFAULT '0',
  `kinderKortingPerc` decimal DEFAULT '0',
  `laatsteKlantnummer` int(11) DEFAULT '0',
  `laatsteReisnummer` int(11) DEFAULT '0',
  `laatsteBoekingnummer` int(11) DEFAULT '0',
  CONSTRAINT constantId_UniqueIndex UNIQUE INDEX (constantId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `constanten`
--

INSERT INTO `constanten` (`annuleerPerc`, `kinderKortingPerc`, `laatsteKlantnummer`, `laatsteReisnummer`, `laatsteBoekingnummer`) VALUES
(0.04, 0.2, 100984497, 98404, 984412);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `klanten`
--

DROP TABLE IF EXISTS `klanten`;
CREATE TABLE IF NOT EXISTS `klanten` (
  `klantnummer` int(11) NOT NULL auto_increment,
  `familienaam` varchar(255) DEFAULT NULL,
  `voornaam` varchar(255) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `plaatsId` INT NOT NULL,
  `firma` varchar(255) DEFAULT NULL,
  `geslacht` varchar(255) DEFAULT NULL,
  `geboortedatum` datetime DEFAULT NULL,
  `klanttype` int(11) DEFAULT NULL,
  `telefoonnummer` varchar(255) DEFAULT NULL,
  `faxnummer` varchar(50) DEFAULT NULL,
  `gsm` varchar(255) DEFAULT NULL,
  `emailadres` varchar(255) DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `btwnr` varchar(255) DEFAULT NULL,
  KEY `KlantID` (`klantnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `klanten`
--

INSERT INTO `klanten` (`klantnummer`, `familienaam`, `voornaam`, `adres`, `plaatsId`, `firma`, `geslacht`, `geboortedatum`, `klanttype`, `telefoonnummer`, `faxnummer`, `gsm`, `emailadres`, `rekening`, `btwnr`) VALUES
(100103620, 'Rovers', 'Veerle', 'Kerkstraat 26', 1, 'MODERN OFFICE BVBA', 'v', '1975-12-08 00:00:00', 1, '(050) 95.89.83', NULL, '0477 123457', 'Veerle.Rovers@hotmail.com', '431809088181', 'BE 400.046.806'),
(100142310, 'Vandenabeele', 'Marc', 'Markt 16', 2, 'A.R.G. BVBA', 'm', '1975-02-09 00:00:00', 2, '(053) 28.52.34', NULL, '0496 577498', 'Marc.Vandenabeele@hotmail.com', '000014802604', 'BE 417.435.540'),
(100156220, 'Tijtgat', 'Ward', 'Noordstraat 23', 3, 'AHREND NV', 'm', '1969-08-03 00:00:00', 3, '(03) 397.08.23', NULL, '0478 278299', 'Ward.Tijtgat@hotmail.com', '319221964787', 'BE 405.702.005'),
(100163380, 'Dhollander', 'Dirk', 'Sepulkrijnenlaan 14', 4, 'RANK XEROX SA', 'm', '1970-09-09 00:00:00', 1, '(011) 17.02.36', NULL, '0479 238864', 'Dirk.Dhollander@hotmail.com', '001155346182', 'BE 400.438.764'),
(100183500, 'Vanacker', 'Hanne', 'Langestraat 98', 3, 'R & G SCHUMACHER', 'v', '1975-03-04 00:00:00', 2, '(03) 512.75.69', NULL, '0477 001122', 'Hanne.Vanacker@hotmail.com', '000001058714', 'BE 861.316.448'),
(100200340, 'Catteeuw', 'Eric', 'Provinciestraat 14', 5, 'ENGELEN BVBA', 'm', '1969-07-02 00:00:00', 3, '(03) 406.46.98', NULL, '0496 784512', 'Eric.Catteeuw@hotmail.com', '410039378181', 'BE 417.767.617'),
(100277380, 'Bonnet', 'Roger', 'St-Hubertuslaan 41', 6, 'MERCATOR SA', 'm', '1960-05-09 00:00:00', 1, '(013) 65.95.81', NULL, '0478 748596', 'Roger.Bonnet@hotmail.com', '734301414674', 'BE 405.928.172'),
(100283350, 'Platteau', 'Magda', 'Vijfwegenstraat 164', 7, 'EURO SI', 'v', '1970-01-29 00:00:00', 2, '(051) 93.07.68', NULL, '0479 112233', 'Magda.Platteau@hotmail.com', '001155355781', 'BE 636.158.662'),
(100283560, 'Van Elk', 'Peter', 'Molenstraat 56', 8, 'DELMI DECOR', 'm', '1975-12-28 00:00:00', 3, '(050) 71.44.72', NULL, NULL, 'Peter.Van Elk@hotmail.com', '335002867711', 'BE 414.771.010'),
(100300160, 'Van den Broecke', 'Lucie', 'Koning Albertlaan 23', 6, 'ALFA-DISC', 'v', '1975-02-22 00:00:00', 1, '(016) 03.88.68', NULL, '0476 456789', 'Lucie.Van den Broecke@hotmail.com', '001016354276', 'BE 425.585.520'),
(100300470, 'Lanssens', 'Piet', 'Hoogstraat 10', 7, 'ACCOMS BVBA', 'm', '1969-08-20 00:00:00', 2, '(051) 37.50.90', NULL, NULL, 'Piet.Lanssens@hotmail.com', '408702649170', 'BE 421.382.648'),
(100318310, 'Ramon', 'Johan', 'Beukenlaan 16', 9, 'TOBIE DE PRINS BVBA', 'm', '1970-09-29 00:00:00', 3, '(050) 97.32.72', '(050) 12.45.78', '0477 445566', 'Johan.Ramon@hotmail.com', '784508996715', 'BE 404.944.514'),
(100349550, 'De Clerk', 'Dorine', 'Lindenlaan 23', 6, 'VANSEVENANT BVBA', 'v', '1975-03-24 00:00:00', 1, '(011) 47.97.30', NULL, '0496 556677', 'Dorine.De Clerk@hotmail.com', '210030386920', 'BE 419.693.462'),
(100432890, 'Glorieux', 'Ann', 'Hoogstraat 2', 2, 'INTERLIT NV', 'v', '1969-07-22 00:00:00', 2, '(053) 63.60.20', NULL, '0478 667788', 'Ann.Glorieux@hotmail.com', '290001790174', 'BE 400.027.109'),
(100477310, 'Janssens', 'Johan', 'Kortrijkse steenweg 56', 8, 'DE WOLF FERDINAND & CO BVBA', 'm', '1960-05-29 00:00:00', 3, '(09) 790.43.07', NULL, '0479 778899', 'Johan.Janssens@hotmail.com', '220001976513', 'BE 400.025.129'),
(100483880, 'Kerkhove', 'Greet', 'Kattestraat 10', 10, 'ALLGEIER COMPUTER GMBH', 'v', '1970-01-29 00:00:00', 1, '(03) 941.47.84', NULL, '0477 986532', 'Greet.Kerkhove@hotmail.com', '210047916032', 'BE 426.820.883'),
(100546738, 'Desmet', 'Jozef', 'Brugse steenweg 203', 7, 'AVEMART BVBA', 'm', '1966-01-27 00:00:00', 2, '(051) 18.22.02', NULL, '0496 552288', 'Jozef.Desmet@hotmail.com', '461319222874', 'BE 408.466.604'),
(100733820, 'Ruysschaert', 'Ann', 'Beheersstraat 12', 11, 'ROUX MEUBELPRODUKTEN', 'v', '1975-12-18 00:00:00', 3, '(056) 61.23.89', NULL, '0478 783255', 'Ann.Ruysschaert@hotmail.com', '450049115196', 'BE 401.843.438'),
(100899230, 'Van Den Broecke', 'Luc', 'Eikenberg 62', 12, 'WIJCKMANS', 'm', '1975-02-19 00:00:00', 1, '(012) 75.97.22', NULL, '0479 197328', 'Luc.Van Den Broecke@hotmail.com', '799550004853', 'BE 412.661.754'),
(100933730, 'Vandenbroucke', 'Jan', 'Stationsstraat 89', 4, 'LUCAS BELGIUM NV', 'm', '1969-08-13 00:00:00', 2, '(011) 44.25.52', NULL, '0477 330022', 'Jan.Vandenbroucke@hotmail.com', '235046002967', 'BE 415.503.953'),
(100953370, 'Declerck', 'Mia', 'Rodestraat 12', 12, 'SENTINEL COMPUTER PRODUCTS NV', 'v', '1970-09-19 00:00:00', 3, '(012) 51.78.67', NULL, '0496 794631', 'Mia.Declerck@hotmail.com', '000077862405', 'BE 422.901.687'),
(100984470, 'Deschuymere', 'Kathy', 'Jozef Plateaustraat 10', 13, 'DUPLICATO', 'v', '1975-03-14 00:00:00', 1, '(09) 216.91.10', NULL, '0478 775533', 'Kathy.Deschuymere@hotmail.com', '443353347161', 'BE 451.312.888'),
(100984471, 'Cloet', 'Hugo', 'Keizerlei 57', 5, 'KEMPENSE KANTOORSYSTEMEN CV', 'm', '1969-07-12 00:00:00', 2, '(03) 304.00.45', NULL, '0479 010203', 'Hugo.Cloet@hotmail.com', '434809501174', 'BE 428.927.565'),
(100984472, 'Coopman', 'Peter', 'Eikenlaan 54', 8, 'B.G.O. NV', 'm', '1960-05-19 00:00:00', 3, '(050) 44.77.79', NULL, '0477 040506', 'Peter.Coopman@hotmail.com', '425007448181', 'BE 428.122.663'),
(100984473, 'Deschuymer', 'Elsie', 'St-Pietersnieuwstraat 2', 13, 'DRUKKERIJ JOOS NV', 'v', '1970-01-19 00:00:00', 1, '(09) 289.70.15', '(059) 88.42.18', '0477 458211', 'Elsie.Deschuymer@hotmail.com', '000024810475', 'BE 404.162.178'),
(100984474, 'Lambrecht', 'Geert', 'Groenstraat 412', 10, 'ETALO NV', 'm', '1969-07-02 00:00:00', 2, '(03) 626.53.00', NULL, NULL, 'Geert.Lambrecht@hotmail.com', '750919137103', 'BE 405.561.750'),
(100984475, 'Janssens', 'Dirk', 'Grote Markt 12', 11, 'SSI SCHAEFER SA', 'm', '1960-05-09 00:00:00', 3, '(056) 90.19.25', NULL, '0477 070809', 'Dirk.Janssens@hotmail.com', '310027374593', 'BE 414.944.620'),
(100984476, 'Goethals', 'Patrick', 'Romeinse laan 16', 11, 'SONUWE NV', 'm', '1970-01-29 00:00:00', 1, '(056) 01.28.85', NULL, '0496 708090', 'Patrick.Goethals@hotmail.com', '335002531039', 'BE 401.348.683'),
(100984477, 'Meuleman', 'Luc', 'Italiëlei 203', 5, 'LOGICA SA', 'm', '1975-12-28 00:00:00', 2, '(03) 103.25.13', NULL, '0478 405060', 'Luc.Meuleman@hotmail.com', '477866990721', 'BE 419.457.197'),
(100984478, 'Staelens', 'Els', 'Scheldestraat 89', 5, 'VELDEMAN NV', 'v', '1975-02-22 00:00:00', 3, '(03) 851.78.12', NULL, '0479 102030', 'Els.Staelens@hotmail.com', '220096335382', 'BE 426.720.519'),
(100984479, 'Blomme', 'Alain', 'Klaverheide 10', 5, 'DIDECOR SPRL', 'm', '1969-08-20 00:00:00', 1, '(03) 664.40.86', NULL, '0477 779331', 'Alain.Blomme@hotmail.com', '430025295163', 'BE 421.282.480'),
(100984480, 'D''hollander', 'Luc', 'Zuidmolenstraat 12', 7, 'CLAUS-KELEMAN', 'm', '1970-09-29 00:00:00', 2, '(050) 05.93.29', NULL, '0496 558221', 'Luc.D''hollander@hotmail.com', '306722008801', 'BE 816.319.237'),
(100984481, 'Vanackere', 'Charlotte', 'Zuidstraat 87', 3, 'DIGITAL SA', 'v', '1975-03-24 00:00:00', 3, '(03) 563.10.14', NULL, '0478 933822', 'Charlotte.Vanackere@hotmail.com', '712011301290', 'BE 407.823.434'),
(100984482, 'Desmedt', 'Mia', 'Stationsstraat 16', 1, 'FRAMA', 'v', '1969-07-22 00:00:00', 1, '(050) 56.82.83', NULL, '0479 771882', 'Mia.Desmedt@hotmail.com', '700004029786', 'BE 423.969.776'),
(100984483, 'Grymonprez', 'Hans', 'Heidebloemlaan 16', 10, 'CATO', 'm', '1960-05-29 00:00:00', 2, '(03) 196.99.49', NULL, '0477 664997', 'Hans.Grymonprez@hotmail.com', '413400542157', 'BE 405.123.694'),
(100984484, 'Cooman', 'Eric', 'Leopold 3-laan', 14, 'C.N.CO. CLAESEN COLLECTION', 'm', '1970-01-29 00:00:00', 3, '(059) 65.71.04', NULL, '0496 113446', 'Eric.Cooman@hotmail.com', '210090251074', 'BE 416.965.089'),
(100984485, 'Mussche', 'Rose-Anne', 'Overleiestraat 10', 11, 'VETRORESINA', 'v', '1966-01-27 00:00:00', 1, '(056) 63.16.88', NULL, '0478 337119', 'Rose-Anne.Mussche@hotmail.com', '271016555104', 'BE 216.819.645'),
(100984486, 'Bonte', 'Louise', 'Westlaan 16', 7, 'OBUMEX BVBA', 'v', '1975-12-18 00:00:00', 2, '(050) 01.52.75', NULL, '0479 885225', 'Louise.Bonte@hotmail.com', '467712833182', 'BE 405.584.417'),
(100984487, 'Vandenbroecke', 'Stefaan', 'Sikkelstraat 56', 12, 'CATOOR', 'm', '1975-02-19 00:00:00', 3, '(012) 23.12.43', NULL, '0477 445665', 'Stefaan.Vandenbroecke@hotmail.com', '310015105111', 'BE 461.316.954'),
(100984488, 'Vanden Abeele', 'Roger', 'Tongerse steenweg 124', 4, 'HERMANT SPRL', 'm', '1969-08-13 00:00:00', 1, '(011) 24.42.33', NULL, '0496 881992', 'Roger.Vanden Abeele@hotmail.com', '646017327042', 'BE 405.911.346'),
(100984489, 'Declercq', 'Maria', 'Demerstraat 45', 4, 'PAMI NV', 'v', '1970-09-19 00:00:00', 2, '(011) 81.91.04', NULL, '0478 775773', 'Maria.Declercq@hotmail.com', '319261360329', 'BE 423.087.373'),
(100984490, 'Kerckhof', 'Guido', 'Sterreweg 45', 10, 'VERHAEGEN J. BVBA', 'm', '1975-03-14 00:00:00', 3, '(03) 834.75.37', NULL, '0479 337991', 'Guido.Kerckhof@hotmail.com', '435028444120', 'BE 423.298.397'),
(100984491, 'Jansen', 'Wilfried', 'Blandijnberg 56', 13, 'KINDEKENS ETS SPRL', 'm', '1969-07-12 00:00:00', 1, '(09) 337.11.84', NULL, '0477 468210', 'Wilfried.Jansen@hotmail.com', '230099306691', 'BE 401.899.011'),
(100984492, 'De Smet', 'Dirk', 'Kouter 23', 13, 'AIMS', 'm', '1960-05-19 00:00:00', 2, '(09) 261.00.27', NULL, '0496 888222', 'Dirk.De Smet@hotmail.com', '235011041339', 'BE 416.446.734'),
(100984493, 'Jansens', 'Simon', 'Schoolstraat 78', 3, 'SAMKO BURO', 'm', '1970-01-19 00:00:00', 3, '(03) 728.18.85', NULL, '0478 771117', 'Simon.Jansens@hotmail.com', '220096588491', 'BE 406.469.194'),
(100984494, 'Waterloos', 'Marie-Anne', 'Overpoortstraat 25', 13, 'INTERSTUHL RACO BVBA', 'v', '1975-03-14 00:00:00', 1, '(09) 560.46.46', NULL, '0479 993339', 'Marie-Anne.Waterloos@hotmail.com', '220030091254', 'BE 425.984.606'),
(100984495, 'Janssen', 'Veerle', 'Kortrijkse steenweg 10', 13, 'HONEYWELL BULL SA', 'v', '1969-07-12 00:00:00', 2, '(09) 443.55.79', NULL, '0477 779997', 'Veerle.Janssen@hotmail.com', '220076081378', 'BE 402.026.891'),
(100984496, 'Stockmans', 'Mieke', 'Oude Vest 14', 3, 'DEBACKERE BVBA KANTOORMEUBELEN', 'v', '1960-05-19 00:00:00', 3, '(03) 203.36.61', NULL, '0496 664446', 'Mieke.Stockmans@hotmail.com', '000024810475', 'BE 425.509.702'),
(100984497, 'Dereygere', 'Clement', 'Berkenlaan 8', 15, 'EVER', 'm', '1970-01-19 00:00:00', 1, '(089) 37.90.70', NULL, '0478 113331', 'Clement.Dereygere@hotmail.com', '712100147129', 'BE 451.312.888'),
(100984499, 'Jacobs', 'Dirk', 'Vindictievelaan 14', 14, 'GOEKINT', 'm', '1980-05-29 00:00:00', 2, '(059) 11.17.02', '(059) 66.73.37', '0498 667379', 'Dirk.Jacobs@yahoo.com', '310003867053', 'BE 451.999.123');
-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personeelsleden`
--

DROP TABLE IF EXISTS `personeelsleden`;
CREATE TABLE IF NOT EXISTS `personeelsleden` (
  `personeelsnummer` int(11) NOT NULL auto_increment,
  `familienaam` varchar(255) DEFAULT NULL,
  `voornaam` varchar(255) DEFAULT NULL,
  `adres` varchar(255) DEFAULT NULL,
  `plaatsId` INT NOT NULL,
  `telefoonnummer` varchar(255) DEFAULT NULL,
  `gsm` varchar(255) DEFAULT NULL,
  `emailadres` varchar(255) DEFAULT NULL,
  `geboortedatum` datetime DEFAULT NULL,
  `datumIndiensttreding` datetime DEFAULT NULL,
  `inDienst` int(11) DEFAULT NULL,
  `rekeningnummer` varchar(255) DEFAULT NULL,
  `salaris` decimal DEFAULT NULL,
  KEY `PersoneelsID` (`personeelsnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `personeelsleden`
--

INSERT INTO `personeelsleden` (`personeelsnummer`, `familienaam`, `voornaam`, `adres`, `plaatsId`, `telefoonnummer`, `gsm`, `emailadres`, `geboortedatum`, `datumIndiensttreding`, `inDienst`, `rekeningnummer`, `salaris`) VALUES
(1054, 'Vandenabeele', 'Jos', 'Dapperstraat 16', 16, '95 89 83', '0497 66 35 13', 'JVandena', '1966-01-27 00:00:00', '2000-01-03 00:00:00', -1, '461-3192228-74', 1500),
(1055, 'Vanacker', 'Veerle', 'Land van Belofte 26', 1, '28 52 34', '0497 36 36 86', 'VVanacke', '1969-07-02 00:00:00', '2000-01-03 00:00:00', -1, '750-9191371-03', 1500),
(1056, 'Verlinde', 'Marc', 'H. Serruyslaan 66', 14, '97 08 23', '0497 49 71 96', 'MVerlind', '1975-12-08 00:00:00', '2002-02-20 00:00:00', -1, '000-0148026-04', 1500),
(1057, 'Lievens', 'Ward', 'Noordstraat 23', 17, '11 75 69', '0497 66 73 37', 'WLievens', '1980-05-29 00:00:00', '2001-03-21 00:00:00', 0, '000-0248104-75', 1500),
(1058, 'Dedeurwaerder', 'Dirk', 'Zevende Hemel 7', 18, '12 75 69', '0497 09 72 20', 'DDedeurw', '1983-02-20 00:00:00', '1999-02-14 00:00:00', -1, '290-0017901-74', 1500),
(2012, 'Quaghebuur', 'Mieke', 'Langestraat 98', 13, '06 46 98', '0496 78 45 12', 'MQuagheb', '1969-08-03 00:00:00', '2002-02-01 00:00:00', -1, '410-0393781-81', 1500),
(2013, 'Dedecker', 'Eric', 'Zoeten Inval 144', 13, '65 95 81', '0478 74 85 96', 'EDedecke', '1970-01-29 00:00:00', '2002-02-01 00:00:00', -1, '230-0993066-97', 1500),
(2014, 'Lieckens', 'Roger', 'St-Hubertuslaan 41', 13, '93 07 68', '0479 50 21 12', 'RLiecken', '1975-12-18 00:00:00', '2002-02-01 00:00:00', -1, '467-7128331-82', 1500),
(2015, 'Delporte', 'Saartje', 'Vijfwegenstraat 164', 29, '71 44 72', NULL, 'SDelport', '1960-05-09 00:00:00', '2002-02-01 00:00:00', 0, '210-0479160-32', 1500),
(2016, 'Lievemans', 'Chris', 'Trapiestendreef 69', 30, '03 88 68', '0476 45 67 89', 'CLievema', '1966-01-27 00:00:00', '2002-02-01 00:00:00', -1, '220-0760813-78', 1500),
(2017, 'Lindemans', 'Klaas', 'Rue Les Miserables 2', 13, '37 50 90', NULL, 'KLindema', '1975-02-19 00:00:00', '2002-02-01 00:00:00', -1, '306-7220088-00', 1500),
(3088, 'Filliers', 'Dirk', 'De Keyserlei', 5, '19 51 24', NULL, 'DFillier', '1976-01-08 00:00:00', '1998-04-01 00:00:00', -1, '700-0040297-97', 1500),
(3089, 'Moens', 'Johan', 'Statiestraat 7', 19, '52 07 86', NULL, 'JMoens', '1979-09-06 00:00:00', '1998-04-01 00:00:00', -1, '001-0163542-77', 1500),
(3090, 'Vanbergen', 'Jacqueline', 'Turnhoutsebaan 16', 20, '85 19 13', '0496 49 93 57', 'JVanberg', '1975-12-29 00:00:00', '1998-04-01 00:00:00', 0, '310-0273745-98', 1500),
(3091, 'Vanmarcke', 'Inge', 'Turnhoutsebaan 194', 21, '85 34 27', '0478 44 38 89', 'IVanmarc', '1975-12-30 00:00:00', '1998-04-01 00:00:00', -1, '310-0273745-99', 1500),
(3092, 'Versluys', 'Michel', 'Magdalenastraat 44', 22, '72 11 14', '0479 42 56 98', 'MVersluy', '1984-02-29 00:00:00', '1998-04-01 00:00:00', -1, '734-3014146-75', 1500),
(4001, 'Debruyne', 'Luc', 'Thonissenlaan 47', 4, '35 60 07', '0478 14 21 32', 'LDebruyn', '1976-01-01 00:00:00', '2000-04-05 00:00:00', -1, '700-0040297-90', 1500),
(4002, 'Coudeville', 'Silvain', 'Lanceloot Blondeellaan 21', 23, '55 59 19', '0479 46 52 59', 'SCoudevi', '1976-01-02 00:00:00', '2003-12-11 00:00:00', -1, '700-0040297-91', 1500),
(4003, 'Govaert', 'Jan', 'Gildestraat 4', 24, '88 76 85', '0477 11 34 95', 'JGovaert', '1969-06-28 00:00:00', '1999-08-04 00:00:00', 0, '410-0393781-84', 1500),
(4004, 'Adriaens', 'Marc', 'Europalaan 23', 25, '16 95 17', '0496 12 36 54', 'MAdriaen', '1976-01-03 00:00:00', '2000-06-05 00:00:00', -1, '700-0040297-92', 1500),
(4005, 'Dejonge', 'Koen', 'Ambiorixplein 55', 12, '03 86 13', '0478 99 45 21', 'KDejonge', '1969-06-29 00:00:00', '2001-12-15 00:00:00', -1, '712-1001471-33', 1500),
(4006, 'Walgraeve', 'Tinneke', 'De Merodedreef 123', 12, '43 01 84', '0479 12 59 41', 'TWalgrae', '1969-06-30 00:00:00', '2003-07-23 00:00:00', -1, '410-0393781-85', 1500),
(4007, 'Aerts', 'Pascale', 'Molenvest 66', 12, '04 43 17', '0477 77 35 46', 'PAerts', '1976-01-04 00:00:00', '2000-06-23 00:00:00', -1, '700-0040297-93', 1500),
(5045, 'Geuzemans', 'Lambiek', 'Stationsstraat 2', 26, '97 32 72', '0477 16 04 51', 'LGeuzema', '1969-08-13 00:00:00', '1998-08-08 00:00:00', 0, '210-0303869-20', 1500),
(5046, 'Roels', 'Hilde', 'L. Melsenstraat 20', 27, '47 97 30', '0477 00 52 28', 'HRoels', '1975-12-18 00:00:00', '2002-10-14 00:00:00', -1, '235-0110413-39', 1500),
(5047, 'Vandaele', 'Martine', 'Leuvensestraat 8', 28, '63 60 20', '0477 55 67 35', 'MVandael', '1970-01-29 00:00:00', '2001-09-06 00:00:00', -1, '335-0025310-39', 1500),
(5048, 'Acke', 'Jan', 'Sint-Maartensstraat 5', 27, '90 43 07', '0477 56 47 58', 'JAcke', '1975-12-28 00:00:00', '2003-09-12 00:00:00', -1, '310-0273745-97', 1500);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reizen`
--

DROP TABLE IF EXISTS `reizen`;
CREATE TABLE IF NOT EXISTS `reizen` (
  `reisnummer` int(11) NOT NULL auto_increment,
  `bestemmingscode` varchar(5) NOT NULL,
  `vertrekdatum` datetime NOT NULL,
  `aantalDagen` tinyint(3) unsigned NOT NULL,
  `prijsPerPersoon` decimal(19,4) NOT NULL,
  KEY `bestemmingscode` (`bestemmingscode`),
  KEY `ReisID` (`reisnummer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `reizen`
--

INSERT INTO `reizen` (`reisnummer`, `bestemmingscode`, `vertrekdatum`, `aantalDagen`, `prijsPerPersoon`) VALUES
(92367, 'SANPA', '2015-05-11 00:00:00', 14, '2300.0000'),
(94368, 'SANFR', '2015-07-16 00:00:00', 14, '3200.0000'),
(92369, 'BALI', '2015-05-16 00:00:00', 21, '4300.0000'),
(98370, 'CORSI', '2015-05-18 00:00:00', 23, '1600.0000'),
(96373, 'CORDO', '2015-05-19 00:00:00', 21, '5300.0000'),
(98375, 'MADRI', '2015-05-19 00:00:00', 10, '1400.0000'),
(92376, 'SANPA', '2015-05-21 00:00:00', 23, '4900.0000'),
(90377, 'RABAT', '2015-05-23 00:00:00', 12, '2770.0000'),
(90378, 'TANGE', '2015-06-23 00:00:00', 23, '3650.0000'),
(94379, 'VERAC', '2015-05-23 00:00:00', 14, '4900.0000'),
(92380, 'MEDAN', '2015-05-26 00:00:00', 19, '5320.0000'),
(90385, 'TANGE', '2015-05-29 00:00:00', 14, '2795.0000'),
(98386, 'GRANC', '2015-05-02 00:00:00', 10, '1300.0000'),
(98387, 'ISTAN', '2015-05-03 00:00:00', 14, '2773.0000'),
(98388, 'HELSI', '2015-05-03 00:00:00', 12, '2399.0000'),
(94389, 'MIAMI', '2015-06-04 00:00:00', 23, '5890.0000'),
(90390, 'RABAT', '2015-05-04 00:00:00', 14, '2950.0000'),
(90391, 'RABAT', '2015-05-04 00:00:00', 21, '3590.0000'),
(98392, 'GITES', '2015-05-09 00:00:00', 14, '3200.0000'),
(96395, 'LIMA', '2015-05-09 00:00:00', 28, '6790.0000'),
(92396, 'BANGK', '2015-05-09 00:00:00', 22, '5395.0000'),
(92398, 'SURUB', '2015-05-11 00:00:00', 28, '6666.0000'),
(90399, 'CAIRO', '2015-05-11 00:00:00', 8, '1468.0000'),
(98400, 'BARCE', '2015-05-11 00:00:00', 9, '1240.0000'),
(98401, 'DUSSD', '2015-05-12 00:00:00', 4, '840.0000'),
(98402, 'MOIRA', '2015-05-12 00:00:00', 20, '1630.0000'),
(94403, 'MIAMI', '2015-05-14 00:00:00', 21, '5300.0000'),
(98404, 'CORSI', '2015-05-14 00:00:00', 10, '2400.0000'),
(95405, 'HAVA', '2015-05-31 00:00:00', 14, '1800.0000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
