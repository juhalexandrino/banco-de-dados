CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionario(
	Id BIGINT IDENTITY(1, 1),
	Nome VARCHAR(255) NOT NULL,
	Cargo VARCHAR (255) NOT NULL,
	DataAdmissao DATE,
	Salario DECIMAL(7, 2) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_funcionario(Nome, Cargo, DataAdmissao, Salario)
	VALUES ('Eduardo', 'Desenvolvedor Júnior', '2023-09-18', 1800.00),
	('Leonardo', 'Desenvolvedor Sênior', '2023-09-18', 6756.00),
	('Ingrid', 'Tech Lead', '2023-09-18', 10586.00),
	('Udson', 'Engenheiro de Software', '2023-09-18', 6756.00),
	('Rhyan', 'Desenvolvedor Pleno', '2023-09-18', 5356.00);

SELECT * from tb_funcionario;

SELECT * FROM tb_funcionario WHERE Salario > 2000;

SELECT * FROM tb_funcionario WHERE Salario < 2000;

UPDATE tb_funcionario SET DataAdmissao = '2022-08-19' WHERE Id = 3;

SELECT * from tb_funcionario;
