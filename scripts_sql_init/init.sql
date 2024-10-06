-- init.sql
CREATE DATABASE IF NOT EXISTS mspr1;

USE mspr1;

CREATE TABLE IF NOT EXISTS communes (
    dep TINYINT,
    codecommune INT PRIMARY KEY,
    nomdep VARCHAR(100),
    nomcommune VARCHAR(100),
    reg TINYINT,
    nomreg VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS faits (
    codecommune INT,
    annee INT,
    agriculteurs INT,
    independants INT,
    cadres INT,
    intermediaires INT,
    employes INT,
    ouvriers INT,
    population_active_totale INT,
    chomeurs INT,
    population INT,
    CONSTRAINT PK_Fait PRIMARY KEY (codecommune,annee)
);

CREATE TABLE IF NOT EXISTS elections (
    id_election VARCHAR(20),
    annee INT,
    type_election VARCHAR(10),
    tour VARCHAR(3),
    codecommune INT,
    bureau VARCHAR(7),
    nuance VARCHAR(8),
    pourcentage_voix_inscrits DOUBLE,
    CONSTRAINT PK_Elections PRIMARY KEY (codecommune,annee,tour, bureau, nuance, type_election)
);

CREATE TABLE IF NOT EXISTS crimes (
    codecommune INT,
    annee INT,
    crimes_delits INT,
    CONSTRAINT PK_Fait PRIMARY KEY (codecommune,annee)
);