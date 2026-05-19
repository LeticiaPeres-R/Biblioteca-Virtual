let database = require("../database/config")

function totalFavoritos(fkUsuario) {
    let instrucao =
        `
            SELECT COUNT(*) AS totalFavoritos 
            FROM favoritos 
            WHERE fkUsuario = ${fkUsuario};
        `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}
function porcentagemAcervo(fkUsuario) {
    let instrucao =
        `
            SELECT ROUND((COUNT(*) / (SELECT COUNT(*) FROM livros)) * 100, 0) AS porcentagemAcervo, COUNT(*) AS totalFavoritos
            FROM favoritos
            WHERE fkUsuario = ${fkUsuario};
        `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}
function livroMaisFavoritado() {
    let instrucao =
        `
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
        `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}
function generoMaisFavoritado() {
    let instrucao =
        `
            SELECT 
                livros.genero,
                COUNT(favoritos.fkLivro) AS qtdFavoritos,
                ROUND((COUNT(favoritos.fkLivro) / (SELECT COUNT(*) FROM favoritos)) * 100, 0) AS porcentagemGenero
            FROM favoritos
            JOIN livros ON favoritos.fkLivro = livros.idLivro
            GROUP BY livros.genero
            ORDER BY qtdFavoritos DESC
            LIMIT 1;
        `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}
function topCincoGeneros() {
    let instrucao =
        `
            SELECT 
                livros.genero,
                COUNT(favoritos.fkLivro) AS qtdFavoritos,
                ROUND((COUNT(favoritos.fkLivro) / (SELECT COUNT(*) FROM favoritos)) * 100, 0) AS porcentagemGenero
            FROM favoritos
            JOIN livros ON favoritos.fkLivro = livros.idLivro
            GROUP BY livros.genero
            ORDER BY qtdFavoritos DESC
            LIMIT 5;
        `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}
function topCincoLivros() {
    let instrucao =
        `
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
        `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}
function favoritosRecentes(fkUsuario) {
    let instrucao =
        `
            SELECT 
                livros.titulo, 
                livros.autor, 
                livros.imagem, 
                DATE_FORMAT(favoritos.dtFavoritado, '%d/%m/%Y') AS dataFavoritado
            FROM favoritos
            JOIN livros ON favoritos.fkLivro = livros.idLivro
            WHERE favoritos.fkUsuario = ${fkUsuario}
            ORDER BY favoritos.dtFavoritado DESC
            LIMIT 5;
        `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}

module.exports = {
    totalFavoritos,
    porcentagemAcervo,
    livroMaisFavoritado,
    generoMaisFavoritado,
    topCincoLivros,
    favoritosRecentes,
    topCincoGeneros
}