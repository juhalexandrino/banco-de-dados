CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1, 1),
	NomeCategoria VARCHAR(255) NOT NULL,
	NumeroEstudantes INT,
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias(NomeCategoria, NumeroEstudantes)
VALUES ('Livre', 16),
('Licenciatura', 20),
('Bacharelado', 40),
('Tecnólogo', 35),
('Pós-Graduação', 10);

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
	Id BIGINT IDENTITY(1, 1),
	Nome VARCHAR(255) NOT NULL,
	NomeCoordenador VARCHAR(255) NOT NULL,
	Turno VARCHAR(255) NOT NULL,
	Mensalidade DECIMAL(7, 2) NOT NULL
	PRIMARY KEY(Id),
	CategoriasId BIGINT,
	FOREIGN KEY (CategoriasId) REFERENCES tb_categorias(Id)
);

INSERT INTO	tb_cursos(Nome, NomeCoordenador, Turno, Mensalidade, CategoriasId)
VALUES('Gestão da Teconlógia da Informação', 'Gabriela Pimenta', 'Noturno', 1500, 5),
('Análise e Desenvolvimento de Sistemas', 'Luz Soares', 'Diurno', 2500, 4),
('Jogos Digitais', 'Kalil Ribeiro', 'Vespertino', 1500, 1),
('Ciência da Computação', 'Paula Mendes', 'Noturno', 5500, 3),
('Web Design', 'Milena Fernandes', 'Diurno', 1700, 1),
('Redes de Computadores', 'Renata Pereira', 'Diurno', 4400, 4),
('Data Science', 'Eduardo Lima', 'Noturno', 3700, 2),
('Sistemas da Programação', 'Diego Persa', 'Vespertino', 4600, 3);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE Mensalidade > 500;

SELECT * FROM tb_cursos WHERE Mensalidade BETWEEN 600 AND 1500;

SELECT * FROM tb_cursos WHERE Nome LIKE '%j%';

SELECT * FROM tb_categorias INNER JOIN tb_cursos ON tb_categorias.Id = tb_cursos.CategoriasId;

SELECT * FROM tb_categorias INNER JOIN tb_cursos ON tb_categorias.Id = tb_cursos.CategoriasId WHERE tb_cursos.CategoriasId = 5;

