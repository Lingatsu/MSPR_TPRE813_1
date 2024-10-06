-- init.sql
CREATE DATABASE IF NOT EXISTS mspr1;

USE mspr1;

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

CREATE TABLE IF NOT EXISTS communes (
    dep TINYINT,
    codecommune INT PRIMARY KEY,
    nomdep VARCHAR(100),
    nomcommune VARCHAR(100),
    reg TINYINT,
    nomreg VARCHAR(100)
);