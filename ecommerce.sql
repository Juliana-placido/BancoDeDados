CREATE DATABASE ecommerce_maquiagem;

USE ecommerce_maquiagem;

CREATE TABLE produtos (
  id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  marca VARCHAR(50) NOT NULL,
  tipo VARCHAR(50) NOT NULL,
  cor VARCHAR(50) NOT NULL,
  preco DECIMAL(8, 2) NOT NULL
);

INSERT INTO produtos (id, nome, marca, tipo, cor, preco) VALUES
(1, 'Base Matte', 'Ruby Rose', 'Base', 'Bege Claro', 29.90),
(2, 'Pó Compacto', 'Vult', 'Pó', 'Translúcido', 32.50),
(3, 'Batom Matte', 'MAC', 'Batom', 'Vermelho', 89.00),
(4, 'Máscara de Cílios', 'Maybelline', 'Máscara de Cílios', 'Preto', 45.00),
(5, 'Corretivo Líquido', 'Nars', 'Corretivo', 'Bege Médio', 149.90),
(6, 'Blush', 'Quem Disse, Berenice?', 'Blush', 'Rosa Queimado', 49.90),
(7, 'Sombras', 'Sephora Collection', 'Sombras', 'Paleta Neutra', 129.00),
(8, 'Delineador em Gel', 'Inglot', 'Delineador', 'Preto', 89.90),
(9, 'Cadeira de Maquiagem', 'Macrilan', 'Acessório', 'Branca', 850.00),
(10, 'Kit de Pincéis', 'Artis Brush', 'Acessório', 'Preto', 790.00),
(11, 'Paleta de Sombras', 'Natasha Denona', 'Sombras', 'Paleta Glam', 899.00);
SELECT * FROM produtos WHERE preco > 50.00;
SELECT * FROM produtos WHERE preco <= 50.00;
SELECT * FROM produtos WHERE preco <= 50.00;
UPDATE produtos SET preco = 79.00 WHERE id = 3;