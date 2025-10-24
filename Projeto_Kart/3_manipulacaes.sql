USE kart_nacional;

SET SQL_SAFE_UPDATES = 0;

UPDATE Etapa SET local = 'Salvador' WHERE local = 'Campo Grande';
UPDATE Etapa SET local = 'Goiânia' WHERE local = 'Londrina';

UPDATE Equipe SET patrocinio_idPatrocinio = NULL WHERE nome = 'Corredores de Aço';
DELETE FROM Patrocinio WHERE nomePatrocinio = 'Pneus ProDrive';

SELECT * FROM Piloto;
