CREATE SCHEMA universite;

USE universite;

CREATE TABLE Sexe (
    Cdsexe INTEGER PRIMARY KEY,
    Lbsexe VARCHAR(15)
);


CREATE TABLE Enseignant (
    numens INTEGER primary key,
    nomens VARCHAR(15),
    grade VARCHAR(26),
    ancien INTEGER
);


CREATE TABLE Etudiant (
    numetu INTEGER PRIMARY KEY,
    nometu VARCHAR(15),
    dtnaiss DATE,
    cdsexe INTEGER,
    CONSTRAINT fk_EtudiantSexe FOREIGN KEY (cdsexe)
        REFERENCES Sexe (cdsexe)
);

CREATE TABLE Matiere (
    numat INTEGER PRIMARY KEY,
    nomat VARCHAR(15),
    coeff INTEGER,
    numens INTEGER,
    CONSTRAINT fk_MatiereEnseignant FOREIGN KEY (numens)
        REFERENCES Enseignant(numens)
);

 CREATE TABLE Notes (
    numetu INTEGER,
    numat INTEGER,
    note INTEGER,
    PRIMARY KEY (numetu , numat),
     constraint fk_NotesEtudiant foreign key (numetu) references Etudiant(numEtu),
     constraint fk_NotesMatiere foreign key (numat) references Matiere(numat)
);




