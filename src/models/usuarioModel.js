let database = require("../database/config")

function cadastrar(nome, email, senha){
    let instrucaoSql = `
        INSERT INTO usuario (nomeCompleto, email, senha) VALUES
        ('${nome}', '${email}', '${senha}')
        `
        console.log("Executando a instrução SQL: \n" + instrucaoSql)
        return database.executar(instrucaoSql)
}


function autenticar(email, senha){
    let instrucaoSql = `
            SELECT * FROM usuario WHERE email = '${email}' AND senha = '${senha}'
        `
        console.log("Executando a instrução SQL: \n" + instrucaoSql)
        return database.executar(instrucaoSql)
}

module.exports = {
    cadastrar,
    autenticar
}