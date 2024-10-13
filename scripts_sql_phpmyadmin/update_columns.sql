ALTER TABLE annee
ADD PRIMARY KEY (id_annee);

ALTER TABLE commune
MODIFY nomcommune VARCHAR(50),
MODIFY nomdep VARCHAR(50),
MODIFY nomreg VARCHAR(50),
ADD PRIMARY KEY (id_commune);

ALTER TABLE criminalite
ADD PRIMARY KEY (id_criminalite);

ALTER TABLE demographie
ADD PRIMARY KEY (id_demographie);

ALTER TABLE emploi
MODIFY chomeurs INT,
ADD PRIMARY KEY (id_emploi);

ALTER TABLE resultats_elections_nuance
MODIFY id_election VARCHAR(15),
MODIFY id_annee TINYINT,
MODIFY id_type_election TINYINT,
ADD PRIMARY KEY (id_commune, id_annee, id_type_election),
ADD CONSTRAINT fk_commune
    FOREIGN KEY (id_commune) REFERENCES commune(id_commune),
ADD CONSTRAINT fk_annee
    FOREIGN KEY (id_annee) REFERENCES annee(id_annee),
ADD CONSTRAINT fk_type_election
    FOREIGN KEY (id_type_election) REFERENCES type_election(id_type_election);

ALTER TABLE type_election
MODIFY type_election VARCHAR(10),
MODIFY tour VARCHAR(5),
ADD PRIMARY KEY (id_type_election);
