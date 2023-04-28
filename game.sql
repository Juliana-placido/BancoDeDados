CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  descricao VARCHAR(255)
);

INSERT INTO tb_classes (id, nome, descricao)
VALUES
(1, 'Guerreiro', 'Personagem forte e resistente em combate corpo a corpo'),
(2, 'Mago', 'Personagem especializado em magias ofensivas e defensivas'),
(3, 'Arqueiro', 'Personagem habilidoso com arcos e flechas');

CREATE TABLE tb_personagens (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  nivel INT,
  poder_ataque INT,
  poder_defesa INT,
  id_classe INT,
  FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (id, nome, nivel, poder_ataque, poder_defesa, id_classe)
VALUES
(1, 'Superman', 10, 3500, 3000, 1),
(2, 'Batman', 15, 4500, 3500, 2),
(3, 'GreenArrow', 12, 2800, 2500, 3),
(4, 'Flash', 5, 1200, 2000, 2),
(5, 'WonderWoman', 8, 2200, 2000, 1),
(6, 'Aquaman', 9, 3000, 2500, 1),
(7, 'DoctorStrange', 14, 4000, 4000, 2),
(8, 'CaptainMarvel', 7, 1800, 1600, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.*, tb_classes.nome AS classe_nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.*, tb_classes.nome AS classe_nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';