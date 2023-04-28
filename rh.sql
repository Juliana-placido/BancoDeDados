CREATE DATABASE rh_generation;
USE rh_generation;
CREATE TABLE colaboradores (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  cargo VARCHAR(50) NOT NULL,
  salario FLOAT NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO colaboradores (nome, idade, cargo, salario, email) 
VALUES 
  ('Juliana Lima', 30, 'Desenvolvedora', 3000.00, 'juliana.lima@generation.com'),
  ('Maria Costa', 50, 'Gerente de Projetos', 6600.00, 'maria.costa@generation.com'),
  ('Pedro Marcio', 38, 'Coordenador', 3500.00, 'pedro.m@generation.com'),
  ('Ana Silva', 28, 'Assistente Administrativo', 1800.00, 'ana.s@generation.com'),
  ('Leide Maria', 30, 'Analista de Marketing', 2700.00, 'leide.m@generation.com');

SELECT * FROM colaboradores; 

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET cargo = 'Assistente de Marketing', salario = 2000.00 WHERE id = 2;