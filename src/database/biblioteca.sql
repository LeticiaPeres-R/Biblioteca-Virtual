CREATE DATABASE Biblioteca_Virtual;
DROP DATABASE Biblioteca_Virtual;
USE Biblioteca_Virtual;

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR(200),
    email VARCHAR(150),
    senha VARCHAR(150)
);
SELECT * FROM usuario;

CREATE TABLE livros (
    idLivro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100),
    tituloCurto VARCHAR(14),
    autor VARCHAR(100),
    imagem VARCHAR(255),
    genero VARCHAR(100),
	resumo VARCHAR(800),
	opiniao VARCHAR(500)
);
CREATE TABLE favoritos (
    fkUsuario INT NOT NULL,
    fkLivro INT NOT NULL,
    dtFavoritado DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (fkLivro) REFERENCES livros(idLivro)
);

INSERT INTO livros (titulo, tituloCurto, autor, imagem, genero, resumo, opiniao) VALUES
('O Homem de Giz', 'Homem de Giz', 'C.J. Tudor', 'img-homem-de-giz.jpg', 'Suspense', NULL, NULL),
('Manual de assassinato para boas garotas', 'Manual Ass.', 'Holly Jackson', 'img-manual-de-assassinato-para-boas-garotas.jpg', 'Mistério', NULL, NULL),
('Segredo de Sangue', 'Seg. Sangue', 'Tess Gerritsen', 'img-segredo-de-sangue.jpg', 'Suspense', NULL, NULL),
('O Filho de Netuno', 'Filho Netuno', 'Rick Riordan', 'img-filho-de-netuno.jpg', 'Fantasia', NULL, NULL),
('O Ladrão de Raios', 'Ladrão Raios', 'Rick Riordan', 'img-ladrao-de-raios.jpg', 'Fantasia', NULL, NULL),
('O que aconteceu com Annie', 'Acont. Annie', 'C.J. Tudor', 'img-o-que-aconteceu-com-annie.jpg', 'Suspense', NULL, NULL),
('O Castelo Animado', 'Cas. Animado', 'Diana Wynne Jones', 'img-castelo-animado.jpg', 'Fantasia', NULL, NULL),
('O Cirurgião', 'O Cirurgião', 'Tess Gerritsen', 'img-cirurgiao.jpg', 'Suspense', NULL, NULL),
('Caindo na Estrada', 'Caindo Estr.', 'Jeff Kinney', 'img-caindo-na-estrada.jpg', 'Infantojuvenil', NULL, NULL),
('Jogos Vorazes', 'Jogos Voraz', 'Suzanne Collins', 'img-jogos-vorazes.jpg', 'Distopia', NULL, NULL),
('E Não Sobrou Nenhum', 'Não Sobrou', 'Agatha Christie', 'img-e-nao-sobrou-nenhum.jpg', 'Mistério', NULL, NULL),
('Um de Nós Está Mentindo', 'Um de Nós Mnt', 'Karen McManus', 'img-um-de-nos-esta-mentindo.jpg', 'Mistério', NULL, NULL),
('Neon Genesis Evangelion', 'Evangelion', 'Yoshiyuki Sadamoto', 'img-neon-genesis-evangelion.jpg', 'Mangá', NULL, NULL),
('Death Note', 'Death Note', 'Tsugumi Ohba e Takeshi Obata', 'img-death-note.jpg', 'Mangá', NULL, NULL),
('Hunter x Hunter', 'Hunter x H.', 'Yoshihiro Togashi', 'img-hunter-x-hunter.jpg', 'Mangá', NULL, NULL),
('Haikyuu!!', 'Haikyuu!!', 'Haruichi Furudate', 'img-haikyuu.jpg', 'Mangá', NULL, NULL),
('Desaparecidas', 'Desaparecidas', 'Tess Gerritsen', 'img-desaparecidas.jpg', 'Suspense', NULL, NULL),
('Attack on Titan', 'Attack Titan', 'Hajime Isayama', 'img-attack-on-titan.jpg', 'Mangá', NULL, NULL);

-- Resumo
-- 4 primeiros
UPDATE livros
SET resumo = 'Em uma pequena cidade marcada por segredos e acontecimentos estranhos, um grupo de amigos passa a se comunicar através de desenhos feitos com giz. 
O que começa como uma brincadeira inocente na infância rapidamente se transforma em algo perturbador quando símbolos misteriosos começam a aparecer pela cidade, 
levando os personagens até uma descoberta assustadora. Anos depois, já adultos, eles tentam seguir suas vidas normalmente, mas o passado retorna de forma inesperada 
quando novos desenhos começam a surgir novamente. Entre memórias fragmentadas, mentiras escondidas e acontecimentos sombrios, a história mistura suspense psicológico, 
investigação e tensão constante, criando uma narrativa cheia de mistérios e reviravoltas.'
WHERE idLivro = '1';

UPDATE livros
SET resumo = 'Pip Fitz-Amobi é uma estudante determinada que decide investigar um antigo caso de assassinato que marcou sua cidade anos antes. Oficialmente, todos 
acreditam que o crime já foi resolvido, mas Pip começa a desconfiar de que existem detalhes ignorados e versões da história que nunca foram realmente questionadas. 
Enquanto entrevista moradores, analisa provas e descobre novos segredos, ela percebe que o caso é muito mais complexo do que parecia. A investigação acaba colocando a 
protagonista em situações perigosas e revelando o lado obscuro de uma cidade aparentemente tranquila. A obra combina mistério, investigação criminal e tensão juvenil 
de forma envolvente.'
WHERE idLivro = '2';

UPDATE livros
SET resumo = 'A detetive Jane Rizzoli e a legista Maura Isles se envolvem em mais um caso repleto de mistérios quando acontecimentos violentos começam a levantar dúvidas
 sobre o passado de uma família marcada por segredos antigos. Conforme a investigação avança, conexões inesperadas surgem entre desaparecimentos, crimes brutais e histórias
 escondidas por muitos anos. A narrativa constrói uma atmosfera intensa e investigativa, alternando momentos de suspense psicológico com descobertas impactantes. A cada nova 
 pista, o caso se torna mais perigoso e complexo, mantendo a sensação constante de tensão e desconfiança.'
WHERE idLivro = '3';

UPDATE livros
SET resumo = 'Sem lembrar completamente de quem é ou de tudo o que viveu anteriormente, Percy Jackson desperta em um novo lugar cercado por criaturas mitológicas e perigos 
desconhecidos. Em busca de respostas, ele encontra novos aliados e descobre que precisará enfrentar desafios ainda maiores para impedir ameaças capazes de colocar o mundo em 
risco. Durante sua jornada, Percy precisa lidar com batalhas, profecias e missões perigosas enquanto tenta recuperar suas memórias e entender seu verdadeiro papel dentro daquele 
universo mitológico. A história mistura aventura, fantasia, ação e amizade, expandindo ainda mais o universo dos semideuses.'
WHERE idLivro = '4';


-- +4
UPDATE livros
SET resumo = 'Percy Jackson acreditava que teria um ano escolar tranquilo, mas logo percebe que novos perigos começam a surgir ao seu redor. Quando acontecimentos estranhos 
passam a ameaçar o equilíbrio entre o mundo humano e o universo mitológico, Percy é novamente levado para uma jornada cheia de criaturas lendárias, batalhas perigosas e revelações 
importantes. Ao lado de seus amigos, ele precisará enfrentar desafios cada vez maiores enquanto descobre mais sobre seu destino como semideus. A narrativa mistura aventura, humor e 
ação constante dentro do universo da mitologia grega.'
WHERE idLivro = 5;

UPDATE livros
SET resumo = 'Em uma pequena cidade marcada por acontecimentos estranhos e memórias traumáticas, uma mulher retorna para lidar com segredos que ficaram enterrados por muitos anos. 
Conforme novas descobertas surgem, o passado começa a se conectar com eventos perturbadores do presente, trazendo à tona mistérios envolvendo desaparecimentos, mentiras e relações 
familiares complexas. A narrativa cria uma atmosfera sombria e psicológica, mantendo a tensão constante enquanto diferentes peças da história começam a se encaixar.'
WHERE idLivro = 6;

UPDATE livros
SET resumo = 'Sophie é uma jovem que leva uma vida simples até ser vítima de uma maldição que transforma completamente sua aparência. Em busca de uma solução, ela acaba encontrando 
o misterioso castelo ambulante de Howl, um mago conhecido tanto por sua fama excêntrica quanto pelos rumores espalhados a seu respeito. Conforme passa a conviver naquele ambiente 
mágico, Sophie descobre segredos, constrói novas relações e enfrenta situações inesperadas envolvendo magia, guerras e autodescoberta. A obra combina fantasia, aventura e momentos 
leves de forma encantadora.'
WHERE idLivro = 7;

UPDATE livros
SET resumo = 'A detetive Jane Rizzoli e a legista Maura Isles investigam uma sequência de crimes brutais que parecem seguir padrões extremamente calculados. Conforme o caso avança, 
as duas percebem que estão lidando com um assassino inteligente e perigoso, capaz de manipular pistas e desafiar constantemente a investigação policial. A narrativa mergulha em um 
suspense intenso, explorando tensão psicológica, investigações detalhadas e o impacto emocional causado pelos crimes. Cada descoberta aproxima ainda mais as protagonistas de uma verdade assustadora.'
WHERE idLivro = 8;

-- +4
UPDATE livros
SET resumo = 'Greg Heffley embarca em uma viagem de carro com sua família, acreditando que talvez as férias possam ser divertidas. No entanto, o passeio rapidamente se transforma em uma 
sequência de situações caóticas, imprevistos exagerados e conflitos familiares típicos do universo de Diário de um Banana. Entre paradas desastrosas, planos que dão errado e momentos 
constrangedores, a história aposta no humor cotidiano e nas confusões de uma família tentando transformar uma viagem comum em uma grande aventura.'
WHERE idLivro = 9;

UPDATE livros
SET resumo = 'Em uma sociedade dividida em distritos e controlada por um governo autoritário, jovens são escolhidos para participar de uma competição mortal transmitida como entretenimento 
para toda a população. Katniss Everdeen se vê envolvida nesse sistema cruel e precisa enfrentar desafios físicos, emocionais e estratégicos para sobreviver. A história mistura ação, crítica 
social e tensão constante, apresentando um universo marcado por desigualdade, controle político e resistência.'
WHERE idLivro = 10;

UPDATE livros
SET resumo = 'Dez pessoas são convidadas para uma ilha isolada sob diferentes pretextos, mas logo percebem que há algo estranho por trás daquele encontro. Sem contato com o mundo exterior, os 
convidados começam a ser confrontados por acusações ligadas ao passado, enquanto acontecimentos cada vez mais assustadores tornam o ambiente sufocante. A narrativa constrói um mistério clássico 
e envolvente, explorando desconfiança, culpa e medo em um cenário fechado onde todos parecem esconder alguma coisa.'
WHERE idLivro = 11;

UPDATE livros
SET resumo = 'Quando um estudante morre durante uma detenção escolar, os outros jovens presentes passam a ser vistos como suspeitos. Cada um deles guarda segredos que poderiam mudar a 
forma como são vistos pelos colegas, pela escola e pela polícia. Conforme a investigação avança, versões diferentes começam a surgir, revelando conflitos, mentiras e pressões típicas da 
adolescência. A história combina suspense juvenil, mistério policial e drama escolar, mantendo a dúvida sobre o que realmente aconteceu.'
WHERE idLivro = 12;

-- +6
UPDATE livros
SET resumo = 'Shinji Ikari é chamado para pilotar uma unidade gigante chamada Evangelion em meio a ataques de seres misteriosos conhecidos como Anjos. Enquanto tenta entender seu papel
 nesse conflito, ele se vê cercado por outros pilotos, decisões difíceis e uma organização cheia de segredos. A obra mistura ficção científica, ação e drama psicológico, explorando temas
 como medo, solidão, responsabilidade e amadurecimento dentro de um cenário intenso e cheio de tensão.'
WHERE idLivro = 13;

UPDATE livros
SET resumo = 'Light Yagami é um estudante brilhante que encontra um caderno capaz de matar qualquer pessoa cujo nome seja escrito nele. A partir dessa descoberta, ele passa a usar o objeto
 para tentar criar um mundo de acordo com sua própria visão de justiça. No entanto, suas ações chamam a atenção de investigadores, dando início a um jogo intelectual cheio de estratégias, 
 suspeitas e disputas morais. A obra combina suspense psicológico, investigação e tensão constante.'
WHERE idLivro = 14;

UPDATE livros
SET resumo = 'Gon Freecss é um garoto determinado que decide se tornar Hunter para seguir os passos de seu pai e descobrir mais sobre o mundo ao seu redor. Durante sua jornada, ele conhece 
aliados importantes e enfrenta provas perigosas que exigem coragem, inteligência e força. A história apresenta um universo vasto, cheio de criaturas, desafios e regras próprias, misturando 
aventura, ação, amizade e momentos de grande tensão.'
WHERE idLivro = 15;

UPDATE livros
SET resumo = 'Shoyo Hinata é um estudante apaixonado por vôlei que, mesmo sendo mais baixo que muitos jogadores, sonha em se destacar nas quadras. Ao entrar para o clube de vôlei da escola 
Karasuno, ele precisa aprender a trabalhar em equipe, lidar com rivalidades e superar suas próprias limitações. A obra acompanha treinos, partidas e o crescimento dos personagens, trazendo 
uma narrativa cheia de energia, esforço, amizade e competitividade.'
WHERE idLivro = 16;

UPDATE livros
SET resumo = 'A história acompanha uma investigação marcada pelo desaparecimento de mulheres e por segredos que parecem se esconder atrás de uma rotina aparentemente comum. Conforme novas 
pistas surgem, a narrativa constrói uma atmosfera de suspense e tensão, explorando o impacto emocional dos crimes e a complexidade das relações envolvidas. A obra mistura investigação, 
mistério e drama, mantendo o leitor atento aos detalhes enquanto a verdade vai sendo revelada aos poucos.'
WHERE idLivro = 17;

UPDATE livros
SET resumo = 'Em um mundo onde a humanidade vive protegida por enormes muralhas, a ameaça dos titãs domina o medo e a sobrevivência das pessoas. Eren Yeager, ao lado de seus amigos, sonha em 
conhecer o mundo além das muralhas, mas sua vida muda quando essa segurança começa a ruir. A obra mistura ação, mistério, fantasia sombria e drama, construindo um universo intenso sobre 
liberdade, perda, sobrevivência e conflitos cada vez maiores.'
WHERE idLivro = 18;

-- Opinões
UPDATE livros
SET opiniao = 'Eu gostei bastante desse livro porque ele me deixou muito imersa na história e eu fiquei o tempo todo querendo descobrir o que tinha acontecido. O suspense dele é muito bom 
e tem alguns momentos que realmente dão uma sensação estranha e tensa. Também gostei bastante dos personagens e do plot, porque eu realmente não esperava. A única coisa que me incomodou foi 
o fato de o livro ser relativamente pequeno, então senti que faltou aprofundar algumas coisas e explicar melhor certos detalhes. Minha nota para ele foi 7,5.'
WHERE idLivro = 1;

UPDATE livros
SET opiniao = 'Gostei bastante desse livro, principalmente porque ele foi um dos primeiros livros de investigação mais recentes que eu li. A leitura é muito envolvente e eu gostei bastante 
da forma como a investigação acontece. Durante a história eu fiquei tentando descobrir quem era o culpado e, mesmo desconfiando de algumas coisas, a forma como tudo aconteceu conseguiu me 
surpreender. Também gostei muito dos personagens e do ritmo da história. Minha nota para ele foi 8,5.'
WHERE idLivro = 2;

UPDATE livros
SET opiniao = 'Esse foi o primeiro livro que eu li da Tess Gerritsen e eu simplesmente me apaixonei pela escrita dela. De todos os livros de investigação que eu já li, os dela sempre são os 
que mais conseguem me prender, porque parece que a gente realmente está acompanhando uma investigação policial de verdade. Os detalhes são muito bons e as reviravoltas conseguem me surpreender 
sempre. Nesse livro específico, eu gostei muito da forma como ela mistura investigação com elementos ligados à Igreja Católica, porque deixou a história ainda mais interessante. Também gostei 
muito das protagonistas e da dinâmica entre elas. Sinceramente, eu só queria que o livro fosse ainda maior porque eu fiquei completamente imersa na história. Minha nota para ele é 9,5.'
WHERE idLivro = 3;

UPDATE livros
SET opiniao = 'Eu li esse livro há muitos anos e reli depois de um tempo, então ele acaba sendo bem marcante para mim. Gostei muito porque ele mostra o Percy em uma fase diferente da primeira 
saga e traz vários elementos novos envolvendo os deuses romanos, o que deixou a história muito interessante. Também gostei bastante dos novos personagens, dos enigmas e do amadurecimento do 
Percy ao longo da história. Foi um livro que me deixou muito curiosa para continuar a saga e descobrir o que iria acontecer depois. Minha nota para ele é 8,5.'
WHERE idLivro = 4;

UPDATE livros
SET opiniao = 'Eu gosto muito desse livro, porque ele é o meu infantojuvenil favorito. Foi uma das primeiras histórias mais completas que eu li depois de Diário de um Banana, então ele também 
tem uma importância grande para mim como leitora. Sou apaixonada pelos personagens e pela forma como a história mistura mitologia grega com aventura, humor e momentos de tensão. É um livro que, 
mesmo sendo infantojuvenil, eu acho que funciona em qualquer idade, porque o universo é muito divertido e cheio de histórias interessantes. A escrita é leve, engraçada e prende muito. Minha nota 
para ele é 9.'
WHERE idLivro = 5;

UPDATE livros
SET opiniao = 'Esse livro tem uma pegada muito parecida com O Homem de Giz, então novamente a escrita da autora conseguiu me prender muito. A história é bem pesada e teve momentos que realmente 
me deixaram assustada, porque tudo parece muito realista. Foi um livro que mexeu bastante comigo em alguns momentos e me deixou muito imersa na tensão da história. A única coisa que me incomodou 
foi o fato de ele ser relativamente curto, então algumas coisas ficaram meio abertas e eu gostaria que tivessem aprofundado mais certos detalhes. Mesmo assim, achei a história muito boa e o suspense 
funciona muito bem. Minha nota para ele é 8,5.'
WHERE idLivro = 6;

UPDATE livros
SET opiniao = 'Eu fui ler esse livro depois de reassistir o filme no cinema e sinceramente foi uma experiência muito boa. O livro é bem leve, divertido e muito engraçadinho em vários momentos. 
Os personagens são extremamente carismáticos e eu gostei muito da relação entre a Sophie e o Howl, porque as interações deles são muito divertidas. Além da história ser muito boa, o próprio livro 
é lindo visualmente, então isso também deixou a leitura ainda mais gostosa. É uma leitura bem confortável e divertida, daquelas que fazem a gente simplesmente aproveitar a história. Minha nota 
para ele é 9.'
WHERE idLivro = 7;

UPDATE livros
SET opiniao = 'Esse foi um dos livros mais recentes que eu li dessa lista e também é o primeiro da saga da Jane Rizzoli. Mais uma vez, a escrita da Tess Gerritsen me prendeu muito, porque 
parece que a gente está investigando junto com os detetives. O caso é muito interessante e o assassino é extremamente inteligente, então você nunca sabe qual vai ser o próximo passo dele. 
Em vários momentos eu fiquei frustrada junto com os personagens, tentando entender o que estava acontecendo. Para quem gosta de suspense e investigação, é uma leitura muito boa. Minha nota 
 para ele é 9.'
WHERE idLivro = 8;

UPDATE livros
SET opiniao = 'Esse livro é muito especial para mim porque foi o primeiro que eu li na vida e teve muita importância para eu começar a gostar de leitura. Eu era criança quando li, então 
talvez eu não lembre de todos os detalhes, mas lembro bem de me divertir muito com a viagem em família do Greg. É uma leitura leve, engraçada e muito boa para crianças que estão começando 
a criar o hábito de ler. Foi por causa dele que eu tive vontade de conhecer os outros livros da série. Minha nota para ele é 8.'
WHERE idLivro = 9;

UPDATE livros
SET opiniao = 'Esse foi um dos primeiros livros de distopia que eu li e eu gosto muito tanto do livro quanto dos filmes. Acho a história muito interessante porque, por trás daquele mundo 
mais extremo e fictício, existe uma crítica social muito forte sobre desigualdade, poder e controle. É uma leitura com bastante ação e tensão, mas também é um pouco pesada em alguns momentos, 
principalmente pelos temas que aborda. Gosto muito da protagonista e da forma como a gente consegue sentir o que ela vive e enfrenta ao longo da história. Minha nota para ele é 9.'
WHERE idLivro = 10;

UPDATE livros
SET opiniao = 'Eu gostei bastante desse livro porque ele tem uma ideia muito criativa. A forma como a história vai seguindo a cantiga infantil enquanto as coisas acontecem deixa tudo mais 
interessante e dá uma tensão muito boa durante a leitura. Os livros da Agatha Christie normalmente têm plots bem diferentes e esse foi um dos que mais me prenderam pela curiosidade de entender 
o que realmente estava acontecendo. A escrita também é muito boa e faz a leitura fluir bastante. Minha nota para ele é 8,5.'
WHERE idLivro = 11;

UPDATE livros
SET opiniao = 'Eu gosto bastante desse livro, mas não acho ele um suspense extremamente incrível ou muito difícil de descobrir. Ainda assim, é uma leitura bem divertida e leve para quem quer 
algo mais adolescente, mas que continue tendo mistério e suspense. Tem alguns momentos meio “besteirol”, mas isso também faz parte da proposta dele. Foi um livro que eu gostei de ler justamente 
porque é mais descontraído e fácil de acompanhar. Minha nota para ele é 7.'
WHERE idLivro = 12;

UPDATE livros
SET opiniao = 'Evangelion é um mangá bem misterioso e diferente do que eu costumo ler. A história é muito interessante e consegue te deixar imersa, mas ao mesmo tempo é um pouco pesada e até 
difícil de entender em alguns momentos, porque tem muita coisa acontecendo. Mesmo assim, eu gostei bastante da experiência e achei o enredo bem marcante. Minha nota para ele é 8,5.'
WHERE idLivro = 13;

UPDATE livros
SET opiniao = 'Death Note foi um dos primeiros mangás que eu li e também assisti em anime, então ele é bem marcante para mim. Gosto muito da disputa entre o L e o Light, principalmente porque 
a história faz a gente tomar um lado, e eu sempre fui Team L. Além disso, acho os personagens ótimos e gosto da crítica social que aparece na obra. É uma história inteligente, tensa e com alguns 
momentos bem divertidos também. Minha nota para ele é 9.'
WHERE idLivro = 14;


UPDATE livros
SET opiniao = 'Hunter x Hunter é simplesmente o meu mangá favorito. Eu gosto muito da história, dos personagens e principalmente dos arcos, porque acho tudo muito bem construído. O Gon é um 
protagonista que eu gosto bastante de acompanhar e eu sempre ficava ansiosa para ver o que iria acontecer depois. Além disso, os personagens são muito carismáticos e a obra consegue equilibrar 
momentos leves com partes mais pesadas muito bem. Meu único ponto triste é o fato da história provavelmente nunca ter um final completo, porque é realmente uma obra incrível. Minha nota para ele é 10.'
WHERE idLivro = 15;

UPDATE livros
SET opiniao = 'Haikyuu é um dos meus mangás favoritos e, para mim, é um dos melhores animes de esporte que existem. Eu gosto muito dos personagens porque eles são extremamente carismáticos e 
engraçados, então é impossível não se apegar a eles. O desenvolvimento do Hinata ao longo da história é muito bom e os jogos conseguem ser emocionantes mesmo para quem não entende tanto de vôlei. 
É uma obra muito divertida, leve e empolgante ao mesmo tempo. Minha nota para ele é 10.'
WHERE idLivro = 16;

UPDATE livros
SET opiniao = 'De todos os livros da saga da Jane Rizzoli que eu li até agora, esse foi o meu favorito. A história é muito pesada em vários momentos e me deixou realmente agoniada junto com os 
personagens. A escrita da Tess Gerritsen continua incrível e a investigação consegue prender muito do começo ao fim. É um livro que eu considero mais forte e que talvez precise de um pouco mais 
de estômago para ler, mas ao mesmo tempo é extremamente bem construído. Minha nota para ele é 10.'
WHERE idLivro = 17;

UPDATE livros
SET opiniao = 'Attack on Titan é facilmente um dos meus animes e mangás favoritos. A história é absurda de boa e consegue surpreender o tempo inteiro com plot atrás de plot. O mais impressionante 
é que várias pistas ficam espalhadas durante a história e, mesmo assim, a maioria das revelações consegue pegar a gente completamente de surpresa. Além disso, gosto muito das críticas sociais 
presentes na obra e do fato dos personagens serem tão complexos, principalmente o Eren, que é um protagonista extremamente polêmico. É uma obra muito marcante e muito bem construída. Minha nota 
para ele é 10.'
WHERE idLivro = 18;
SELECT * FROM livros;

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