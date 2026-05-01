var database = require("../database/config")

function favoritar(fkUsuario, fkLivro) {
    var instrucao = `
        INSERT INTO favoritos (fkUsuario, fkLivro)
        VALUES (${fkUsuario}, ${fkLivro});
    `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}

function desfavoritar(fkUsuario, fkLivro) {
    var instrucao = `
    DELETE FROM favoritos WHERE fkUsuario = ${fkUsuario}
    AND fkLivro = ${fkLivro};
    `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}

function listar(fkUsuario) {
    var instrucao = `
        SELECT l.* FROM livros l
        JOIN favoritos f ON f.fkLivro = l.idLivro
        WHERE f.fkUsuario = ${fkUsuario}
    `
    console.log("Executando a instrução SQL: \n" + instrucao)
    return database.executar(instrucao)
}

module.exports = {
    favoritar,
    desfavoritar,
    listar
}