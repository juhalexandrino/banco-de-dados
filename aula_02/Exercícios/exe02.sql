CREATE DATABASE db_e_commerce;

USE db_e_commerce;

CREATE TABLE tb_produto(
	Id BIGINT IDENTITY(1, 1),
	Nome VARCHAR(255) NOT NULL,
	Categoria VARCHAR (255) NOT NULL,
	DataRegistro DATE,
	Valor DECIMAL(6, 2) NOT NULL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_produto(Nome, Categoria, DataRegistro, Valor)
VALUES('Boneca', 'Brinquedo infantil', '2019-03-07', 589.90),
('Toalhas de rosto', 'Casa e Banho', '2020-09-03', 90.00),
('Planta artificial', 'Jardim', '2023-09-17', 45.56),
('Pano de prato', 'Casa e Banho', '2019-06-05', 36.00),
('Caderno A4', 'Papelaria', '2019-06-26', 19.90),
('Tesoura', 'Papelaria', '2021-07-25', 12.00),
('Canteiro de flores', 'Jardim', '2017-08-17', 120.00),
('Carro de corrida', 'Brinquedo Infantil', '2023-09-18', 785.96);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE Valor > 500;

SELECT * FROM tb_produto WHERE Valor < 500;

UPDATE tb_produto SET Valor = 100.00 WHERE Id = 3;

SELECT * FROM tb_produto;