CREATE DATABASE escola;
USE escola;
CREATE TABLE estudantes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    turma ENUM('1 Ano', '2 Ano', '3 Ano') NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO estudantes (nome, idade, turma, nota) VALUES
('João', 15, '1 Ano', 8.5),
('Maria', 16, '2 Ano', 7.8),
('Pedro', 14, '1 Ano', 6.5),
('Lucas', 17, '3 Ano', 9.1),
('Ana', 15, '2 Ano', 6.2),
('Bruno', 16, '3 Ano', 8.9),
('Carla', 14, '1 Ano', 7.0),
('Felipe', 17, '3 Ano', 7.5);
SELECT * FROM estudantes WHERE nota > 7.0;
SELECT * FROM estudantes WHERE nota <= 7.0;
UPDATE estudantes SET nota = 8.0 WHERE id = 5;