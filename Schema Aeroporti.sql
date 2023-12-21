CREATE TABLE AEROPORTO (
    Citta VARCHAR(30) NOT NULL PRIMARY KEY,
    Nazione TEXT(40) NOT NULL,
    NumPiste integer
);

CREATE TABLE AEROPORTO (
    Citta VARCHAR(30) NOT NULL PRIMARY KEY,
    Nazione TEXT(40) NOT NULL,
    NumPiste integer
);

CREATE TABLE VOLO (
    IdVolo VARCHAR(5) PRIMARY KEY,
    GiornoSett text(9),
    CittaPart text(40),
    OraPart time,
    CittaArr text(40),
    OraArr time,
    TipoAereo VARCHAR(25)
);

CREATE TABLE AEREO (
    TipoAereo VARCHAR(25) PRIMARY KEY,
    NumPasseggeri integer,
    QtaMerci integer
);

INSERT INTO AEROPORTO VALUES ('Bologna','Italia',NULL);
INSERT INTO AEROPORTO VALUES ("Berlino","Germania",8);
INSERT INTO AEROPORTO VALUES ("Torino","Italia",3);
INSERT INTO AEROPORTO VALUES ("Londra","Gran Bretagna",6);
INSERT INTO AEROPORTO VALUES ("Milano","Italia",5);
INSERT INTO AEROPORTO VALUES ("Roma","Italia",4);
INSERT INTO AEROPORTO VALUES ("Firenze","Italia",2);
INSERT INTO AEROPORTO VALUES ("Venezia","Italia",2);
INSERT INTO AEROPORTO VALUES ("Napoli","Italia",3);
INSERT INTO AEROPORTO VALUES ("Cagliari","Italia",NULL);


INSERT INTO VOLO VALUES ("AZ260","Sabato","Roma","18:30:00","Bologna","19:05:00","Airbus 330");
INSERT INTO VOLO VALUES ("AZ261","Lunedì","Cagliari","22:00:00","Milano","23:02:00","Boeing 787");
INSERT INTO VOLO VALUES ("AZ262","Giovedì","Torino","10:30:00","Londra","12:56:00","Embraer 175");
INSERT INTO VOLO VALUES ("AZ263","Giovedì","Firenze","18:45:00","Cagliari","19:13:00","Airbus A380");
INSERT INTO VOLO VALUES ("AZ264","Mercoledì","Milano","14:45:00","Napoli","15:43:00","Boeing 777");
INSERT INTO VOLO VALUES ("AZ265","Venerdì","Roma","16:15:00","Berlino","17:59:00","Airbus A300-600F");
INSERT INTO VOLO VALUES ("AZ266","Domenica","Londra","11:45:00","Venezia","13:42:00","Boeing 717");
INSERT INTO VOLO VALUES ("AZ267","Martedì","Napoli","14:45:00","Firenze","15:34:00","Airbus 320");
INSERT INTO VOLO VALUES ("AZ268","Domenica","Torino","22:45:00","Berlino","01:01:00","Airbus A350-900");
INSERT INTO VOLO VALUES ("AZ269","Mercoledì","Cagliari","12:45:00","Bologna","13:26:00","Airbus A350-900");
INSERT INTO VOLO VALUES ("AZ270","Martedì","Bologna","13:00:00","Napoli","14:07:00","Boeing 717");
INSERT INTO VOLO VALUES ("AZ271","Venerdì","Berlino","08:45:00","Cagliari","10:16:00","Airbus 320");
INSERT INTO VOLO VALUES ("AZ272","Lunedì","Roma","10:30:00","Torino","11:22:00","Embraer 175");
INSERT INTO VOLO VALUES ("AZ273","Mercoledì","Milano","23:45:00","Londra","02:43:00","Boeing 767");
INSERT INTO VOLO VALUES ("AZ274","Sabato","Berlino","07:00:00","Venezia","09:49:00","Airbus 330");
INSERT INTO VOLO VALUES ("AZ275","Domenica","Firenze","17:15:00","Cagliari","17:57:00","Boeing 717");

INSERT INTO AEREO VALUES ("Airbus 330",268,249);
INSERT INTO AEREO VALUES ("Boeing 787",210,198);
INSERT INTO AEREO VALUES ("Embraer 175",78,67);
INSERT INTO AEREO VALUES ("Airbus A380",853,826);
INSERT INTO AEREO VALUES ("Boeing 777",300,259);
INSERT INTO AEREO VALUES ("Airbus 320",180,194);
INSERT INTO AEREO VALUES ("Boeing 717",117,106);
INSERT INTO AEREO VALUES ("Boeing 767",284,270);
INSERT INTO AEREO VALUES ("Airbus A350-900",253,220);
INSERT INTO AEREO VALUES ("Airbus A300-600F",345,321);


#Le città con un aeroporto di cui non è noto il numero di piste
SELECT * FROM AEROPORTO WHERE NumPiste IS NULL;


#I tipi di aereo usati nei voli che partono da Torino
SELECT TipoAereo FROM VOLO WHERE CittaPart="Torino";


#Le città da cui partono voli diretti a Bologna
SELECT CittaPart FROM VOLO WHERE CittaArr='Bologna';


#Le città da cui parte e arriva il volo con codice AZ274
SELECT CittaPart,CittaArr FROM VOLO WHERE IdVolo="AZ274";


#Qual è l'aereo che trasporta più di 1000 passeggeri?
#Quanti voli ci sono stati di Giovedì
#Aggiungi per ogni città il nome dell'aeroporto (Nel caso di una città con più aeroporti aggiungere nuove righe tante quante sono gli aeroporti)