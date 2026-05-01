CREATE DATABASE Biblioteca_Virtual;
USE Biblioteca_Virtual;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR(200),
    email VARCHAR(150),
    senha VARCHAR(150)
);

CREATE TABLE livros (
    idLivro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    imagem VARCHAR(255),
    pdfPreview VARCHAR(255)
);

CREATE TABLE favoritos (
	idFavorito INT PRIMARY KEY AUTO_INCREMENT,
    fkUsuario INT NOT NULL,
    fkLivro INT NOT NULL,
	UNIQUE (fkUsuario, fkLivro),
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (fkLivro) REFERENCES livros(idLivro)
);


INSERT INTO livros (titulo, autor, imagem, pdfPreview) VALUES
('O Homem de Giz', 'C.J. Tudor', NULL, NULL),
('Manual de assassinato para boas garotas', 'Holly Jackson', NULL, NULL),
('Segredo de Sangue', 'Tess Gerritsen', NULL, NULL),
('O Filho de Netuno', 'Rick Riordan', NULL, NULL),
('O Ladrão de Raios', 'Rick Riordan', NULL, NULL),
('O que aconteceu com Annie', 'C.J. Tudor', NULL, NULL),
('O Castelo Animado', 'Diana Wynne Jones', NULL, NULL),
('O Cirurgião', 'Tess Gerritsen', NULL, NULL),
('Caindo na Estrada', 'Jeff Kinney', NULL, NULL),
('Jogos Vorazes', 'Suzanne Collins', NULL, NULL),
('E Não Sobrou Nenhum', 'Agatha Christie', NULL, NULL),
('Um de Nós Está Mentindo', 'Karen McManus', NULL, NULL);

SELECT * FROM livros;
