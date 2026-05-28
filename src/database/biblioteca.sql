DROP DATABASE IF EXISTS Biblioteca_Virtual;
CREATE DATABASE Biblioteca_Virtual;
USE Biblioteca_Virtual;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR(200),
    email VARCHAR(150),
    senha VARCHAR(150)
);
SELECT * FROM usuario;

ALTER TABLE livros ADD COLUMN nota DECIMAL(3,1);

CREATE TABLE livros (
    idLivro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    tituloCurto VARCHAR(14),
    autor VARCHAR(100),
    imagem VARCHAR(255),
    genero VARCHAR(100),
	resumo VARCHAR(800),
	opiniao VARCHAR(500),
    nota DECIMAL(3,1)
);
CREATE TABLE favoritos (
    fkUsuario INT NOT NULL,
    fkLivro INT NOT NULL,
    dtFavoritado DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (fkLivro) REFERENCES livros(idLivro)
);

INSERT INTO livros (titulo, tituloCurto, autor, imagem, genero, resumo, opiniao, nota) VALUES
('O Homem de Giz', 'Homem de Giz', 'C.J. Tudor', 'img-homem-de-giz.jpg', 'Suspense', NULL, NULL, NULL),
('Manual de assassinato para boas garotas', 'Manual Ass.', 'Holly Jackson', 'img-manual-de-assassinato-para-boas-garotas.jpg', 'Mistério', NULL, NULL, NULL),
('Segredo de Sangue', 'Seg. Sangue', 'Tess Gerritsen', 'img-segredo-de-sangue.jpg', 'Suspense', NULL, NULL, NULL),
('O Filho de Netuno', 'Filho Netuno', 'Rick Riordan', 'img-filho-de-netuno.jpg', 'Fantasia', NULL, NULL, NULL),
('O Ladrão de Raios', 'Ladrão Raios', 'Rick Riordan', 'img-ladrao-de-raios.jpg', 'Fantasia', NULL, NULL, NULL),
('O que aconteceu com Annie', 'Acont. Annie', 'C.J. Tudor', 'img-o-que-aconteceu-com-annie.jpg', 'Suspense', NULL, NULL, NULL),
('O Castelo Animado', 'Cas. Animado', 'Diana Wynne Jones', 'img-castelo-animado.jpg', 'Fantasia', NULL, NULL, NULL),
('O Cirurgião', 'O Cirurgião', 'Tess Gerritsen', 'img-cirurgiao.jpg', 'Suspense', NULL, NULL, NULL),
('Caindo na Estrada', 'Caindo Estr.', 'Jeff Kinney', 'img-caindo-na-estrada.jpg', 'Infantojuvenil', NULL, NULL, NULL),
('Jogos Vorazes', 'Jogos Voraz', 'Suzanne Collins', 'img-jogos-vorazes.jpg', 'Distopia', NULL, NULL, NULL),
('E Não Sobrou Nenhum', 'Não Sobrou', 'Agatha Christie', 'img-e-nao-sobrou-nenhum.jpg', 'Mistério', NULL, NULL, NULL),
('Um de Nós Está Mentindo', 'Um de Nós Mnt', 'Karen McManus', 'img-um-de-nos-esta-mentindo.jpg', 'Mistério', NULL, NULL, NULL),
('Neon Genesis Evangelion', 'Evangelion', 'Yoshiyuki Sadamoto', 'img-neon-genesis-evangelion.jpg', 'Mangá', NULL, NULL, NULL),
('Death Note', 'Death Note', 'Tsugumi Ohba e Takeshi Obata', 'img-death-note.jpg', 'Mangá', NULL, NULL, NULL),
('Hunter x Hunter', 'Hunter x H.', 'Yoshihiro Togashi', 'img-hunter-x-hunter.jpg', 'Mangá', NULL, NULL, NULL),
('Haikyuu!!', 'Haikyuu!!', 'Haruichi Furudate', 'img-haikyuu.jpg', 'Mangá', NULL, NULL, NULL),
('Desaparecidas', 'Desaparecidas', 'Tess Gerritsen', 'img-desaparecidas.jpg', 'Suspense', NULL, NULL, NULL),
('Attack on Titan', 'Attack Titan', 'Hajime Isayama', 'img-attack-on-titan.jpg', 'Mangá', NULL, NULL, NULL);


-- Resumos atualizados e notas
UPDATE livros
SET resumo = 'Em uma cidade cheia de segredos, um grupo de amigos usa desenhos de giz como brincadeira, até que esses símbolos passam a se ligar a acontecimentos perturbadores. Anos depois, 
o passado volta a assombrá-los, misturando suspense, memória e mistério.',
    nota = 7.5
WHERE idLivro = 1;

UPDATE livros
SET resumo = 'Pip decide investigar um crime antigo que todos acreditam já estar resolvido. Ao revisitar provas, entrevistas e versões diferentes da história, ela percebe que sua cidade guarda 
mais segredos do que aparenta.',
    nota = 8.5
WHERE idLivro = 2;

UPDATE livros
SET resumo = 'Jane Rizzoli e Maura Isles investigam um caso marcado por crimes, desaparecimentos e segredos familiares. Conforme novas pistas aparecem, a investigação ganha um clima cada vez 
mais tenso e cheio de reviravoltas.',
    nota = 9.5
WHERE idLivro = 3;

UPDATE livros
SET resumo = 'Percy Jackson desperta sem lembrar totalmente de seu passado e acaba envolvido em uma nova missão ligada ao universo dos semideuses. A história mistura mitologia, aventura, 
amizade e descobertas sobre seu papel nesse novo cenário.',
    nota = 8.5
WHERE idLivro = 4;

UPDATE livros
SET resumo = 'Percy Jackson descobre que é um semideus e passa a enfrentar criaturas mitológicas, profecias e perigos ligados aos deuses gregos. A aventura apresenta um universo cheio de 
humor, ação e descobertas fantásticas.',
    nota = 9.0
WHERE idLivro = 5;

UPDATE livros
SET resumo = 'Uma mulher retorna a uma cidade marcada por memórias difíceis e segredos antigos. Aos poucos, acontecimentos estranhos do presente começam a se conectar com o passado, criando 
uma atmosfera sombria e cheia de tensão.',
    nota = 8.5
WHERE idLivro = 6;

UPDATE livros
SET resumo = 'Sophie é transformada por uma maldição e acaba encontrando o castelo ambulante de Howl. Em meio a magia, guerras e descobertas pessoais, ela vive uma aventura leve, divertida 
e cheia de personagens encantadores.',
    nota = 9.0
WHERE idLivro = 7;

UPDATE livros
SET resumo = 'Jane Rizzoli investiga uma sequência de crimes brutais cometidos por alguém inteligente e calculista. A cada pista, o caso se torna mais perigoso, misturando suspense 
policial, tensão psicológica e investigação intensa.',
    nota = 9.0
WHERE idLivro = 8;

UPDATE livros
SET resumo = 'Greg Heffley sai em uma viagem de carro com a família, mas o passeio logo vira uma sequência de confusões. A história aposta no humor, em situações exageradas e nos conflitos 
divertidos de uma família em férias.',
    nota = 8.0
WHERE idLivro = 9;

UPDATE livros
SET resumo = 'Em uma sociedade controlada por um governo autoritário, Katniss Everdeen é levada a participar de uma competição mortal. A história mistura ação, tensão e crítica social 
em um mundo marcado por desigualdade e controle.',
    nota = 9.0
WHERE idLivro = 10;

UPDATE livros
SET resumo = 'Dez pessoas são convidadas para uma ilha isolada e logo percebem que há algo errado naquele encontro. Sem contato com o mundo exterior, acusações e mortes misteriosas 
transformam o lugar em um cenário de medo e desconfiança.',
    nota = 8.5
WHERE idLivro = 11;

UPDATE livros
SET resumo = 'Quando um estudante morre durante uma detenção escolar, os outros jovens presentes viram suspeitos. A investigação revela segredos, conflitos e mentiras, misturando 
suspense adolescente com mistério policial.',
    nota = 7.0
WHERE idLivro = 12;

UPDATE livros
SET resumo = 'Shinji Ikari é chamado para pilotar uma unidade Evangelion contra seres misteriosos chamados Anjos. A obra mistura ação, ficção científica e drama psicológico em uma história 
cheia de tensão e simbolismos.',
    nota = 8.5
WHERE idLivro = 13;

UPDATE livros
SET resumo = 'Light Yagami encontra um caderno capaz de matar pessoas e passa a usá-lo para impor sua própria ideia de justiça. A partir disso, começa um jogo intelectual intenso entre 
ele e investigadores determinados a pará-lo.',
    nota = 9.0
WHERE idLivro = 14;

UPDATE livros
SET resumo = 'Gon Freecss decide se tornar Hunter para encontrar seu pai e conhecer melhor o mundo. Em sua jornada, faz amigos, enfrenta provas perigosas e descobre um universo cheio de 
regras, aventuras e personagens marcantes.',
    nota = 10.0
WHERE idLivro = 15;

UPDATE livros
SET resumo = 'Hinata sonha em se destacar no vôlei mesmo sendo mais baixo que muitos jogadores. Ao entrar no time da Karasuno, ele aprende sobre esforço, trabalho em equipe, rivalidade e 
crescimento dentro das quadras.',
    nota = 10.0
WHERE idLivro = 16;

UPDATE livros
SET resumo = 'A história acompanha uma investigação envolvendo desaparecimentos de mulheres e segredos difíceis de encarar. Com clima pesado e muita tensão, a narrativa mistura suspense, 
drama e uma busca angustiante por respostas.',
    nota = 10.0
WHERE idLivro = 17;

UPDATE livros
SET resumo = 'Em um mundo protegido por muralhas, a humanidade vive ameaçada pelos titãs. Eren Yeager e seus amigos enfrentam perdas, mistérios e conflitos que transformam a busca por 
liberdade em uma história cada vez mais intensa.',
    nota = 10.0
WHERE idLivro = 18;

-- Resumos, opiniões e notas atualizadas
UPDATE livros
SET resumo = 'Um grupo de amigos de infância passa a se comunicar por desenhos feitos com giz, até que a brincadeira se liga a uma descoberta assustadora. Anos depois, novos símbolos apare
cem e fazem o passado voltar com força, revelando segredos, traumas e dúvidas que nunca foram totalmente resolvidos.',
    opiniao = 'Eu gostei bastante porque o livro me deixou muito imersa e curiosa para entender o que tinha acontecido. O suspense funciona muito bem e o plot me surpreendeu. Só senti falt
    a de mais detalhes, porque algumas coisas ficaram abertas demais para um livro tão curto.',
    nota = 7.5
WHERE idLivro = 1;

UPDATE livros
SET resumo = 'Pip Fitz-Amobi decide investigar um caso antigo de assassinato que marcou sua cidade. Mesmo todos acreditando que a história já estava resolvida, ela começa a encontrar detalhes estranhos, versões mal explicadas e segredos escondidos, transformando o trabalho escolar em uma investigação perigosa.',
    opiniao = 'Foi um dos primeiros livros de investigação mais recentes que eu li e eu gostei bastante. A leitura prende, os personagens são cativantes e, mesmo eu desconfiando de algumas coisas, a forma como tudo aconteceu conseguiu me surpreender.',
    nota = 8.5
WHERE idLivro = 2;

UPDATE livros
SET resumo = 'Jane Rizzoli e Maura Isles investigam um caso cheio de marcas estranhas, mortes violentas e conexões com segredos antigos. Conforme a investigação avança, o passado de algumas pessoas começa a se misturar com o presente, criando uma trama de suspense intensa e cheia de reviravoltas.',
    opiniao = 'Esse foi o primeiro livro que li da Tess Gerritsen e eu me apaixonei pela escrita dela. Parece que a gente está investigando junto com os personagens. Gostei muito dos detalhes, das protagonistas e da mistura entre investigação e elementos ligados à Igreja Católica.',
    nota = 9.5
WHERE idLivro = 3;

UPDATE livros
SET resumo = 'Percy Jackson acorda sem lembrar completamente de quem é e acaba em um novo acampamento, ligado à mitologia romana. Ao lado de novos aliados, ele precisa enfrentar missões perigosas, criaturas mitológicas e pistas sobre seu passado, enquanto tenta entender seu papel nessa nova fase.',
    opiniao = 'Eu li esse livro há muitos anos e depois reli, então ele é bem marcante para mim. Gosto muito de ver o Percy em outra fase, com novos personagens e elementos romanos. É uma continuação interessante e me deixou com vontade de seguir a saga.',
    nota = 8.5
WHERE idLivro = 4;

UPDATE livros
SET resumo = 'Percy Jackson descobre que é filho de Poseidon e passa a fazer parte de um mundo escondido de deuses, monstros e semideuses. Em sua primeira grande missão, ele precisa atravessar os Estados Unidos com seus amigos para impedir um conflito entre os deuses do Olimpo.',
    opiniao = 'Esse é o meu livro infantojuvenil favorito. Amo os personagens, o humor e a forma como a história mistura mitologia grega com aventura. Mesmo sendo voltado para um público mais jovem, acho que funciona em qualquer idade porque o universo é muito divertido.',
    nota = 9.0
WHERE idLivro = 5;

UPDATE livros
SET resumo = 'Uma mulher retorna a uma cidade marcada por lembranças perturbadoras e acontecimentos mal explicados. Aos poucos, o passado começa a se conectar com novos mistérios, criando uma atmosfera sombria, psicológica e cheia de tensão, em que nem tudo parece estar totalmente enterrado.',
    opiniao = 'Esse livro tem uma pegada parecida com O Homem de Giz, mas me pareceu ainda mais macabro em alguns momentos. A escrita prende muito e algumas cenas realmente me deixaram assustada. Só queria que certos pontos tivessem sido mais aprofundados.',
    nota = 8.5
WHERE idLivro = 6;

UPDATE livros
SET resumo = 'Sophie leva uma vida simples até ser atingida por uma maldição e sair em busca de uma solução. No caminho, ela encontra o castelo ambulante de Howl, um lugar cheio de magia, personagens excêntricos e situações inesperadas que transformam sua visão sobre si mesma.',
    opiniao = 'Eu fui ler depois de reassistir o filme no cinema e adorei a experiência. O livro é leve, divertido e muito fofo. Gosto muito da relação entre Sophie e Howl, dos personagens e também da edição, que deixa a leitura ainda mais gostosa.',
    nota = 9.0
WHERE idLivro = 7;

UPDATE livros
SET resumo = 'Jane Rizzoli investiga uma sequência de crimes brutais cometidos por alguém extremamente calculista. Enquanto tenta entender o padrão do assassino, ela precisa lidar com pistas difíceis, tensão crescente e uma investigação que parece sempre estar um passo atrás do criminoso.',
    opiniao = 'Foi um dos livros mais recentes que li e a escrita da Tess Gerritsen continua perfeita para suspense. O caso é muito bom e o assassino é inteligente, então eu fiquei frustrada junto com os detetives tentando entender tudo. Para quem gosta de investigação, funciona muito.',
    nota = 9.0
WHERE idLivro = 8;

UPDATE livros
SET resumo = 'Greg Heffley sai em uma viagem de carro com sua família, mas o passeio logo vira uma sequência de confusões. Entre planos dando errado, momentos constrangedores e situações exageradas, a história transforma uma viagem comum em uma aventura familiar cheia de humor.',
    opiniao = 'Esse livro é especial porque foi o primeiro que eu li na vida e ajudou muito a criar meu hábito de leitura. Eu era criança, então não lembro de tudo, mas lembro de rir bastante. É uma leitura leve e ótima para quem está começando a ler.',
    nota = 8.0
WHERE idLivro = 9;

UPDATE livros
SET resumo = 'Em uma sociedade dividida em distritos e controlada pela Capital, Katniss Everdeen é levada para uma competição mortal transmitida como espetáculo. A história mistura sobrevivência, tensão e crítica social, mostrando um mundo marcado por desigualdade, controle político e resistência.',
    opiniao = 'Foi uma das primeiras distopias que li e eu gosto muito tanto do livro quanto dos filmes. Acho interessante como a história cria um mundo extremo, mas ainda assim cheio de críticas sobre desigualdade e poder. É uma leitura intensa e com bastante ação.',
    nota = 9.0
WHERE idLivro = 10;

UPDATE livros
SET resumo = 'Dez pessoas são convidadas para uma ilha isolada e logo percebem que há algo errado naquele encontro. Sem contato com o exterior, cada convidado passa a ser confrontado por acusações do passado, enquanto acontecimentos assustadores seguem o ritmo de uma antiga cantiga infantil.',
    opiniao = 'Eu gostei bastante da criatividade desse livro. A ideia da cantiga guiando os acontecimentos deixa tudo mais tenso e interessante. A Agatha Christie tem histórias muito inusitadas, e esse livro prende justamente pela curiosidade de entender como tudo vai se encaixar.',
    nota = 8.5
WHERE idLivro = 11;

UPDATE livros
SET resumo = 'Cinco estudantes entram em uma detenção escolar, mas apenas quatro saem vivos. A partir disso, todos viram suspeitos e segredos começam a aparecer. A história mistura suspense adolescente, drama escolar e investigação, mostrando como cada personagem escondia algo importante.',
    opiniao = 'Eu gosto desse livro, mas não acho ele um suspense grandioso ou muito difícil de desvendar. Ainda assim, ele é divertido e funciona bem para quando quero algo mais leve, adolescente e com mistério. É uma leitura simples, mas gostosa de acompanhar.',
    nota = 7.0
WHERE idLivro = 12;

UPDATE livros
SET resumo = 'Shinji Ikari é chamado para pilotar uma unidade Evangelion em meio aos ataques de seres misteriosos chamados Anjos. A história mistura ficção científica, ação e drama psicológico, mostrando conflitos internos, relações difíceis e muitos segredos por trás da organização que conduz as batalhas.',
    opiniao = 'Evangelion é bem misterioso e diferente do que eu costumo ler. A história prende, mas também é pesada e um pouco difícil de entender em alguns momentos. Mesmo com essa complexidade, achei o enredo marcante e gostei bastante da experiência.',
    nota = 8.5
WHERE idLivro = 13;

UPDATE livros
SET resumo = 'Light Yagami encontra um caderno capaz de matar qualquer pessoa cujo nome seja escrito nele. A partir disso, ele tenta criar um mundo baseado na própria ideia de justiça, enquanto passa a ser investigado por L, dando início a uma disputa cheia de estratégia.',
    opiniao = 'Death Note foi um dos primeiros mangás que li e também assisti em anime, então é bem marcante para mim. Gosto muito da disputa entre Light e L, principalmente porque a história faz a gente tomar um lado. Eu sempre fui Team L.',
    nota = 9.0
WHERE idLivro = 14;

UPDATE livros
SET resumo = 'Gon Freecss decide se tornar Hunter para encontrar seu pai e descobrir mais sobre o mundo. Durante a jornada, ele conhece amigos importantes, enfrenta provas perigosas e entra em um universo cheio de regras próprias, criaturas estranhas, poderes complexos e arcos muito diferentes entre si.',
    opiniao = 'Hunter x Hunter é simplesmente o meu mangá favorito. Amo os personagens, os arcos e a forma como a história é construída. O Gon é muito bom de acompanhar e eu sempre ficava ansiosa pelas conquistas dele. Só fico triste por provavelmente nunca ter um final completo.',
    nota = 10.0
WHERE idLivro = 15;

UPDATE livros
SET resumo = 'Hinata sonha em se destacar no vôlei mesmo sendo mais baixo que muitos jogadores. Ao entrar no Karasuno, ele precisa aprender a trabalhar em equipe, lidar com rivalidades e evoluir dentro da quadra, em uma história cheia de treinos, partidas e crescimento pessoal.',
    opiniao = 'Haikyuu é um dos meus favoritos e, para mim, é elite dos animes de esporte. Os personagens são muito carismáticos e engraçados, o desenvolvimento do Hinata é ótimo e os jogos conseguem ser emocionantes mesmo para quem não entende tanto de vôlei.',
    nota = 10.0
WHERE idLivro = 16;

UPDATE livros
SET resumo = 'Jane Rizzoli e Maura Isles se envolvem em uma investigação marcada pelo desaparecimento de mulheres e por uma rede de segredos assustadora. A trama tem um tom mais pesado, com tensão constante e descobertas que tornam o caso cada vez mais perturbador.',
    opiniao = 'De todos os livros da saga da Jane Rizzoli que li até agora, esse foi o meu favorito. A história é mais pesada e me deixou agoniada junto com os personagens. É um livro que exige mais estômago, mas é extremamente bem construído.',
    nota = 10.0
WHERE idLivro = 17;

UPDATE livros
SET resumo = 'Em um mundo cercado por enormes muralhas, a humanidade vive sob a ameaça dos titãs. Eren Yeager e seus amigos sonham em conhecer o que existe além daquela proteção, mas essa busca 
por liberdade revela perdas, mistérios e conflitos cada vez mais complexos.',
    opiniao = 'Attack on Titan está no meu top 3 de animes e mangás. A história surpreende o tempo inteiro com plot atrás de plot, e muitas pistas estavam ali desde o começo. Gosto muito das 
    críticas sociais e da complexidade do Eren.',
    nota = 10.0
WHERE idLivro = 18;


-- INSERTS PARA TESTES
INSERT INTO usuario (nomeCompleto, email, senha) VALUES
('Letícia Peres', 'leticia@email.com', '123456'),
('Ana Clara Souza', 'ana@email.com', '123456'),
('Mariana Lima', 'mariana@email.com', '123456'),
('Julia Santos', 'julia@email.com', '123456'),
('Beatriz Oliveira', 'beatriz@email.com', '123456'); 

INSERT INTO favoritos (fkUsuario, fkLivro) VALUES
-- Favoritos da Letícia, usuário 1
(1, 1),
(1, 5),
(1, 7),
(1, 10),
(1, 12),

-- Favoritos da Ana, usuário 2
(2, 7),
(2, 10),
(2, 11),
(2, 1),

-- Favoritos da Mariana, usuário 3
(3, 7),
(3, 2),
(3, 10),

-- Favoritos da Julia, usuário 4
(4, 7),
(4, 11),

-- Favoritos da Beatriz, usuário 5
(5, 3),
(5, 5),
(5, 10),
(5, 7);


-- Total de livros favoritados pelo usuário
SELECT COUNT(*) AS totalFavoritos 
FROM favoritos 
WHERE fkUsuario = 1;


-- Porcentagem do acervo favoritado pelo usuário
SELECT ROUND((COUNT(*) / (SELECT COUNT(*) FROM livros)) * 100, 0) AS porcentagemAcervo
FROM favoritos
WHERE fkUsuario = 1;

-- Livro mais favoritado em geral
SELECT 
    livros.titulo, 
    livros.autor, 
    livros.imagem, 
    COUNT(favoritos.fkLivro) AS qtdFavoritos
FROM favoritos
JOIN livros ON favoritos.fkLivro = livros.idLivro
GROUP BY favoritos.fkLivro, livros.titulo, livros.autor, livros.imagem
ORDER BY qtdFavoritos DESC
LIMIT 1;

        SELECT * from livros;

-- Gênero mais favoritado em geral
SELECT 
    livros.genero,
    COUNT(favoritos.fkLivro) AS qtdFavoritos,
    ROUND((COUNT(favoritos.fkLivro) / (SELECT COUNT(*) FROM favoritos)) * 100, 0) AS porcentagemGenero
FROM favoritos
JOIN livros ON favoritos.fkLivro = livros.idLivro
GROUP BY livros.genero
ORDER BY qtdFavoritos DESC
LIMIT 1;


-- Top 5 livros mais favoritados em geral
SELECT 
    livros.titulo, 
    livros.tituloCurto,
    livros.autor, 
    livros.imagem, 
    COUNT(favoritos.fkLivro) AS qtdFavoritos
FROM favoritos
JOIN livros ON favoritos.fkLivro = livros.idLivro
GROUP BY favoritos.fkLivro, livros.titulo, livros.autor, livros.imagem
ORDER BY qtdFavoritos DESC
LIMIT 5;


-- Os 5 gênero mais favoritado em geral
SELECT 
    livros.genero,
    COUNT(favoritos.fkLivro) AS qtdFavoritos,
    ROUND((COUNT(favoritos.fkLivro) / (SELECT COUNT(*) FROM favoritos)) * 100, 0) AS porcentagemGenero
FROM favoritos
JOIN livros ON favoritos.fkLivro = livros.idLivro
GROUP BY livros.genero
ORDER BY qtdFavoritos DESC
LIMIT 5;

-- Até 5 livros favoritados recentemente pelo usuário
SELECT 
    livros.titulo, 
    livros.autor, 
    livros.imagem, 
    favoritos.dtFavoritado
FROM favoritos
JOIN livros ON favoritos.fkLivro = livros.idLivro
WHERE favoritos.fkUsuario = 1
ORDER BY favoritos.dtFavoritado DESC
LIMIT 5;

SELECT * FROM usuario;