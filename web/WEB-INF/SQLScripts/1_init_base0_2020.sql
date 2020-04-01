

drop schema if exists imp3d;
create schema imp3d;
use imp3d;


CREATE TABLE Ambiance (
  ID          int(10) NOT NULL AUTO_INCREMENT, 
  FablabNom   varchar(255), 
  Temperature double NOT NULL, 
  Humidite    double NOT NULL, 
  Datation    date, 
  PRIMARY KEY (ID));

CREATE TABLE Cartouche (
  ID               int(10) NOT NULL AUTO_INCREMENT, 
  Type             varchar(255), 
  EnUtilisation    tinyint(1) NOT NULL, 
  DateRemplacement date, 
  DateFabrication  date, 
  IdentifiantType  varchar(255), 
  NumeroDeSerie    varchar(255), 
  QuantiteRestante double NOT NULL, 
  CoutAuCm3        int(10) NOT NULL, 
  Imprimante3dID   int(10) NOT NULL, 
  PRIMARY KEY (ID));

CREATE TABLE Client (
  ID         int(10) NOT NULL AUTO_INCREMENT, 
  Nom        varchar(255), 
  Prenom     varchar(255), 
  MotDePasse varchar(255), 
  Mail       varchar(255), 
  PRIMARY KEY (ID));

CREATE TABLE Imprimante3d (
  ID                int(10) NOT NULL AUTO_INCREMENT, 
  Nom               varchar(255) NOT NULL, 
  FablabNom         varchar(255), 
  Etat              varchar(255), 
  NbHeuresDeTravail double NOT NULL, 
  CoutHoraire       int(10) NOT NULL, 
  PRIMARY KEY (ID));

CREATE TABLE Inscription (
  Mail varchar(255) NOT NULL, 
  PRIMARY KEY (Mail));

CREATE TABLE Job (
  ID                 int(10) NOT NULL AUTO_INCREMENT, 
  Nom                varchar(255), 
  DateRealisation    date, 
  Etat               varchar(255), 
  DureeConsommee     int(10) NOT NULL, 
  ResteAFaireEstimee int(10) NOT NULL, 
  SupportConsomme    double NOT NULL, 
  MatiereConsommee   double NOT NULL, 
  SupportEstime      double NOT NULL, 
  MatiereEstimee     double NOT NULL, 
  Prix               int(10) NOT NULL, 
  PRIMARY KEY (ID));

CREATE TABLE Operateur (
  ID         int(10) NOT NULL AUTO_INCREMENT, 
  FablabNom  varchar(255), 
  Nom        varchar(255), 
  Prenom     varchar(255), 
  MotDePasse varchar(255), 
  Mail       varchar(255), 
  PRIMARY KEY (ID));



ALTER TABLE Cartouche ADD CONSTRAINT FKCartouche51050 FOREIGN KEY (Imprimante3dID) REFERENCES Imprimante3d (ID);

