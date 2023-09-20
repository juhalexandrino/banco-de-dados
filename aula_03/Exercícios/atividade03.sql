CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1, 1),
	NomeCategoria VARCHAR(255) NOT NULL,
	FreteFixo DECIMAL (4, 2),
	PRIMARY KEY(Id)
);

INSERT INTO tb_categorias(NomeCategoria, FreteFixo)
VALUES ('Higiene Pessoal', 16.00),
('Saúde e Bem-estar', 20.00),
('Skin Care', 12.00),
('Medicamentos', 5.99),
('Beleza', 9.50);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1, 1),
	Nome VARCHAR(255) NOT NULL,
	Marca VARCHAR(255) NOT NULL,
	TipoProduto VARCHAR(255) NOT NULL,
	Valor DECIMAL(7, 2) NOT NULL
	PRIMARY KEY(Id),
	CategoriasId BIGINT,
	FOREIGN KEY (CategoriasId) REFERENCES tb_categorias(Id)
);

INSERT INTO	tb_produtos(Nome, Marca, TipoProduto, Valor, CategoriasId)
VALUES('Sébium Moussant Tubo Antioleosidade 200ml', 'Bioderma', 'Gel de Limpeza', 62.19, 3),
('Venus Suave Sensitive 4 Unidades', 'Gillette', 'Aparelho de Depilar', 19.69, 1),
('Pedra Pomes 80g para pés', 'Granado', 'Esfoliante', 25.69, 1),
('Fini Beijos 10g', 'Carmed', 'Hidratante Labial', 25.90, 3),
('Dipirona 1g', 'Prati-Dunaduzzi', 'Genérico', 9.99, 4),
('Tylenol Sinus 500mg', 'Johnson', 'Analgéstico', 17.01, 4),
('Suplemento Alimentar Maracujá', 'Neo Química', 'Vitamina', 19.69, 2),
('Make Up Removedor', 'Bioré', 'Óleo Demaquilante', 48.90, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Valor > 50.00;

SELECT * FROM tb_produtos WHERE Valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%c%';

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.Id = tb_produtos.CategoriasId;

SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_categorias.Id = tb_produtos.CategoriasId WHERE tb_produtos.CategoriasId = 3;

