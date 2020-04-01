/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  Alex
 * Created: 31 mars 2020
 */

use imp3d;


/*AMBIANCE */
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",12,60,"2019-02-18");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",12,70,"2019-02-19");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",14,50,"2019-02-20");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",13,40,"2019-02-21");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",9,50,"2019-02-22");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",6,30,"2019-02-23");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",10,50,"2019-02-24");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",12,70,"2019-02-25");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",15,50,"2019-02-26");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",17,60,"2019-02-27");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",20,50,"2019-02-28");
insert into Ambiance (FabLabNom, Temperature, Humidite, Datation) values
    ("FabLab_Victor_Hugo",21,70,"2019-03-01");




/*CARTOUCHE ---Marche pas-----*/ 
insert into Cartouche (Type, EnUtilisation, DateRemplacement, DateFabrication, IdentifiantType, NumeroDeSerie, QuantiteRestante, CoutAuCm3, Imprimante3dID) values
                       ("support",True,"2019-01-01","2018-09-10","CARTEST4991-SUP","20B",487,150,"2");
insert into Cartouche (Type, EnUtilisation, DateRemplacement, DateFabrication, IdentifiantType, NumeroDeSerie, QuantiteRestante, CoutAuCm3, Imprimante3dID) values
                       ("matiere",True,"2019-01-01","2018-09-10","CARTEST4991-MAT","10B",487,150,"2");




/*UTILISATEURS ---Marche pas-----*/
insert into Client (Nom, Prenom, MotDePasse, Mail) values
    ("Millet","Bertrand","24C9E15E52AFC47C225B757E7BEE1F9D"/*= mdp = user1 encrypted*/,"user1@gmail.com");


/*IMPRIMANTES ------Marche-------*/
insert into Imprimante3d (Nom, FablabNom, Etat, NbHeuresDeTravail, CoutHoraire) values 
    ("uprint1", "FabLab_Victor_Hugo","ok", 600, 6.00);


/*Inscription ------Marche-------*/
insert into Inscription (Mail) values ("test@gmail.com");




/*JOB ------Marche-------*/
insert into Job (Nom, DateRealisation , Etat, DureeConsommee, ResteAFaireEstimee, SupportConsomme, MatiereConsommee, SupportEstime, MatiereEstimee, Prix) values
    ("poignée","2019-01-17","FINI",12000,0,40.32,12.18,0,0,1400);




/*OPERATEUR DE BASE ---Marche pas-----*/
insert into Operateur (FabLabNom, Nom, Prenom, MotDePasse, Mail ) values
    ("FabLab_Victor_Hugo", "Dumas", "Jean pierre","24C9E15E52AFC47C225B757E7BEE1F9D" /* = encrypted "user1"*/, "operateur@gmail.com" );


















