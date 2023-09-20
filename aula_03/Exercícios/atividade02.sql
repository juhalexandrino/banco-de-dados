CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1, 1),
	Tamanho VARCHAR(255) NOT NULL,
	Disponilbidade BIT,
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias(Tamanho, Disponilbidade)
VALUES ('Mini-pizza', 0),
('Brotinho', 1),
('Média', 1),
('Grande', 1),
('Família', 0);

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizza(
	Id BIGINT IDENTITY(1, 1),
	Sabor VARCHAR(255) NOT NULL,
	Tamanho VARCHAR(255) NOT NULL,
	Borda VARCHAR(255) NOT NULL,
	Valor DECIMAL(7, 2) NOT NULL
	PRIMARY KEY(Id),
	CategoriasId BIGINT,
	FOREIGN KEY (CategoriasId) REFERENCES tb_categorias(Id)
);


INSERT INTO	tb_pizza(Sabor, Tamanho, Borda, Valor, CategoriasId)
VALUES('Calabreza', 'Mini-pizza', 'Catupiry', 12.50, 1),
('Frango com catupiry', 'Brotinho', 'Sem borda', 19.99, 2),
('Bacon com queijo', 'Família', 'Cheedar', 25.69, 5),
('Fini Beijos 10g', 'Família', 'Brigadeiro', 25.90, 5),
('Romeu e Julieta', 'Mini-pizza', 'Sem borda', 9.99, 1),
('Portuguesa', 'Mini-pizza', 'Sem borda', 17.01, 1),
('Chocolate com granulado', 'Brotinho', 'Morango', 19.69, 2),
('Abacaxi com queijo', 'Média', 'Sem borda', 48.90, 3);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE Valor < 45.00;

SELECT * FROM tb_pizza WHERE Valor BETWEEN 48.00 AND 100.00;

SELECT * FROM tb_pizza WHERE Sabor LIKE '%m%';

SELECT * FROM tb_categorias INNER JOIN tb_pizza ON tb_categorias.Id = tb_pizza.CategoriasId;

SELECT * FROM tb_categorias INNER JOIN tb_pizza ON tb_categorias.Id = tb_pizza.CategoriasId WHERE tb_pizza.CategoriasId = 2;
