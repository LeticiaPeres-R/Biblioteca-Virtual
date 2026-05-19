CREATE DATABASE Pt9;
USE Pt9;

CREATE TABLE Grupo(
	idGrupo INT PRIMARY KEY AUTO_INCREMENT,
    nomeGrupo VARCHAR (45),
    descProjeto VARCHAR(110)
);

CREATE TABLE Aluno(
	RA INT PRIMARY KEY,
    nomeAluno VARCHAR(45),
    email VARCHAR(45),
    fkGrupo INT,
    FOREIGN KEY (fkGrupo) REFERENCES Grupo (idGrupo)
);

CREATE TABLE Professor(
	idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nomeProfessor VARCHAR(45),
    disciplina VARCHAR(45)
) AUTO_INCREMENT = 10000;

CREATE TABLE Avaliacao(
    fkGrupo INT,
    fkProfessor INT,
    PRIMARY KEY (fkGrupo, fkProfessor),
	FOREIGN KEY (fkGrupo) REFERENCES Grupo (idGrupo),
	FOREIGN KEY (fkProfessor) REFERENCES Professor (idProfessor),   
    dtAvaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    nota DECIMAL (4,2)
);

INSERT INTO Grupo (nomeGrupo, descProjeto) VALUES
('Grupo 1', 'Controle de temperatura em chocadeiras'),
('Grupo 2', 'Sistema de irrigação automatizada'),
('Grupo 3', 'Monitoramento de qualidade do ar');

INSERT INTO Aluno (RA, nomeAluno, email, fkGrupo) VALUES
(12345, 'Ana Souza', 'ana.souza@email.com', 1),
(12346, 'Bruno Lima', 'bruno.lima@email.com', 1),
(12347, 'Carla Mendes', 'carla.mendes@email.com', 2),
(12348, 'Diego Alves', 'diego.alves@email.com', 2),
(12349, 'Eduarda Rocha', 'eduarda.rocha@email.com', 3),
(12350, 'Felipe Santos', 'felipe.santos@email.com', 3);

INSERT INTO Professor (nomeProfessor, disciplina) VALUES
('Marcos Oliveira', 'Algoritmos'),
('Juliana Ferreira', 'Banco de Dados'),
('Renato Gomes', 'Arquitetura Computacional');

INSERT INTO Avaliacao (fkGrupo, fkProfessor, nota) VALUES
(1, 10000, 8.50),
(1, 10001, 9.00),
(2, 10001, 7.80),
(2, 10002, 8.20),
(3, 10000, 9.30),
(3, 10002, 8.70);

SELECT * FROM Grupo;

SELECT * FROM Aluno;

SELECT * FROM Professor;

SELECT * FROM Avaliacao;

SELECT * FROM Aluno
JOIN Grupo ON
fkGrupo = idGrupo;

SELECT * FROM Aluno
JOIN Grupo ON
fkGrupo = idGrupo
WHERE fkGrupo = 1;

SELECT AVG(nota) FROM Avaliacao
JOIN Grupo ON
fkGrupo = idGrupo;

SELECT MIN(nota), MAX(nota) FROM Avaliacao
JOIN Grupo ON
fkGrupo = idGrupo;

SELECT SUM(nota) FROM Avaliacao
JOIN Grupo ON
fkGrupo = idGrupo;

SELECT * FROM Professor
JOIN Avaliacao ON
fkProfessor = idProfessor
JOIN Grupo ON
fkGrupo = idGrupo;

SELECT * FROM Professor
JOIN Avaliacao ON
fkProfessor = idProfessor
JOIN Grupo ON
fkGrupo = idGrupo
WHERE fkProfessor = 10001;

SELECT * FROM Grupo
JOIN Aluno ON
Aluno.fkGrupo = idGrupo
JOIN Avaliacao ON
Avaliacao.fkGrupo = idGrupo
JOIN Professor ON
fkProfessor = idProfessor;

SELECT DISTINCT(nota) FROM
Avaliacao;

SELECT nomeProfessor, AVG(nota), SUM(nota)
FROM Avaliacao
JOIN Professor ON
fkProfessor = idProfessor
GROUP BY fkProfessor;

SELECT nomeGrupo, AVG(nota), SUM(nota)
FROM Avaliacao
JOIN Grupo ON
fkGrupo = idGrupo
GROUP BY fkGrupo;

SELECT nomeProfessor, MIN(nota), MAX(nota)
FROM Avaliacao
JOIN Professor ON
fkProfessor = idProfessor
GROUP BY fkProfessor;

SELECT nomeGrupo, MIN(nota), MAX(nota)
FROM Avaliacao
JOIN Grupo ON
fkGrupo = idGrupo
GROUP BY fkGrupo;
