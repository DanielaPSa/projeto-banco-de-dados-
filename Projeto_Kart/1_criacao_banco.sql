DROP DATABASE IF EXISTS kart_nacional;
CREATE DATABASE kart_nacional;
USE kart_nacional;

CREATE TABLE Temporada (
    idTemporada INT PRIMARY KEY AUTO_INCREMENT,
    numero INT
);

CREATE TABLE Etapa (
    idEtapa INT PRIMARY KEY AUTO_INCREMENT,
    local VARCHAR(100),
    data DATE,
    hora VARCHAR(45),
    Temporada_idTemporada INT,
    FOREIGN KEY (Temporada_idTemporada) REFERENCES Temporada(idTemporada)
);

CREATE TABLE Patrocinio (
    idPatrocinio INT PRIMARY KEY AUTO_INCREMENT,
    nomePatrocinio VARCHAR(45)
);

CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    patrocinio_idPatrocinio INT NULL,
    FOREIGN KEY (patrocinio_idPatrocinio) REFERENCES Patrocinio(idPatrocinio)
);

CREATE TABLE Piloto (
    idPiloto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(150),
    peso FLOAT,
    capitao TINYINT,
    Equipe_idEquipe INT,
    nacionalidade VARCHAR(45),
    FOREIGN KEY (Equipe_idEquipe) REFERENCES Equipe(idEquipe)
);

CREATE TABLE Etapa_has_Piloto (
    Etapa_idEtapa INT,
    Piloto_idPiloto INT,
    PRIMARY KEY (Etapa_idEtapa, Piloto_idPiloto),
    FOREIGN KEY (Etapa_idEtapa) REFERENCES Etapa(idEtapa),
    FOREIGN KEY (Piloto_idPiloto) REFERENCES Piloto(idPiloto)
);
