let database = require("../database/config")

function listar() {
    var instrucao = `
    SELECT idLivro, titulo, autor, imagem FROM livros;
    `
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function detalhar(idLivro) {
    let instrucao =
        `
        SELECT idLivro, tituloCurto, autor, genero, resumo, opiniao, nota 
        FROM livros WHERE idLivro = ${idLivro};
        `
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}


module.exports = {
    listar,
    detalhar
}