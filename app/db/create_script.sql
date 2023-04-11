DROP DATABASE IF EXISTS `Mvc-2209a-P4`;
CREATE DATABASE IF NOT EXISTS `Mvc-2209a-P4`;

Use `Mvc-2209a-P4`;

DROP TABLE IF EXISTS Instructeur;

CREATE TABLE IF NOT EXISTS Instructeur
(
    Id              TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,Voornaam        VARCHAR(50)                     NOT NULL
   ,Tussenvoegsel   VARCHAR(10)                     DEFAULT NULL
   ,Achternaam      VARCHAR(50)                     NOT NULL
   ,Mobiel          VARCHAR(12)                     NOT NULL
   ,DatumInDienst   DATE                            NOT NULL
   ,AantalSterren   VARCHAR(6)                      NOT NULL

   ,CONSTRAINT      PK_Instructeur_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;


INSERT INTO Instructeur
(
     Voornaam
    ,Tussenvoegsel
    ,Achternaam
    ,Mobiel
    ,DatumInDienst
    ,AantalSterren
)
VALUES
     ('Li', '', 'Zhan', '06-28493827', '2015-04-17', '***');


DROP TABLE IF EXISTS TypeVoertuig;

CREATE TABLE IF NOT EXISTS TypeVoertuig
(
    Id                      TINYINT         UNSIGNED        NOT NULL    AUTO_INCREMENT
   ,TypeVoertuig            VARCHAR(20)                     NOT NULL
   ,Rijbewijscategorie      VARCHAR(10)                     NOT NULL

   ,CONSTRAINT      PK_TypeVoertuig_Id   PRIMARY KEY CLUSTERED(Id)
) ENGINE=InnoDB;


INSERT INTO TypeVoertuig
(
    TypeVoertuig 
    ,Rijbewijscategorie  
)
VALUES
    ('Personenauto','B'),
    ('Vrachtwagen','C'),
    ('Bus','D'),
    ('Bromfiets','AM');