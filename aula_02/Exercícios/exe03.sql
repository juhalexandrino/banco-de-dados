CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	Id BIGINT IDENTITY(1, 1),
	Nome VARCHAR(255) NOT NULL,
	Serie VARCHAR(255) NOT NULL,
	DataAvaliacao DATE,
	Notas DECIMAL(2, 1) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_estudantes(Nome, Serie, DataAvaliacao, Notas)
	VALUES ('Eduardo', '1° EM', '2023-09-18', 7.0),
	('Leonardo', '2º EM', '2023-09-11', 8.0),
	('Ingrid', '3º EM', '2023-09-14', 10.0),
	('Gabriel', '1º EM', '2023-09-18', 6.0),
	('Julia', '3º EM', '2023-09-14', 5.0),
	('Lucas', '2º EM', '2023-09-11', 8.0),
	('Pedro', '3º EM', '2023-09-14', 6.0),
	('Rhyan', '1º EM', '2023-09-18', 5.0);

ALTER TABLE tb_estudantes ALTER COLUMN Notas DECIMAL (7, 2);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE Notas > 7.0;

SELECT * FROM tb_estudantes WHERE Notas < 7.0;

UPDATE tb_estudantes SET Notas = 9.0 WHERE Id = 10;
