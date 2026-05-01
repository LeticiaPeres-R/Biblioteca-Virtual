// ============================================================
// ARQUIVO COMENTADO: src/database/config.js
// Comentários adicionados para explicar a função de cada parte do código.
// ============================================================
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var mysql = require("mysql2");

// CONEXÃO DO BANCO MYSQL SERVER
// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
var mySqlConfig = {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    host: process.env.DB_HOST,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    database: process.env.DB_DATABASE,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    user: process.env.DB_USER,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    password: process.env.DB_PASSWORD,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    port: process.env.DB_PORT
// Fecha o bloco de código iniciado anteriormente.
};

// Cria uma função. Essa função agrupa comandos para serem executados quando for chamada.
function executar(instrucao) {

// Inicia uma condição. O código dentro do bloco só executa se a condição for verdadeira.
    if (process.env.AMBIENTE_PROCESSO !== "producao" && process.env.AMBIENTE_PROCESSO !== "desenvolvimento") {
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM .env OU dev.env OU app.js\n");
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
        return Promise.reject("AMBIENTE NÃO CONFIGURADO EM .env");
// Fecha o bloco de código iniciado anteriormente.
    }

// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
    return new Promise(function (resolve, reject) {
// Define ou altera um valor usado pelo programa.
        var conexao = mysql.createConnection(mySqlConfig);
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
        conexao.connect();
// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
        conexao.query(instrucao, function (erro, resultados) {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
            conexao.end();
// Inicia uma condição. O código dentro do bloco só executa se a condição for verdadeira.
            if (erro) {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                reject(erro);
// Fecha o bloco de código iniciado anteriormente.
            }
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
            console.log(resultados);
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
            resolve(resultados);
// Fecha o bloco de código iniciado anteriormente.
        });
// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
        conexao.on('error', function (erro) {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
            return ("ERRO NO MySQL SERVER: ", erro.sqlMessage);
// Fecha o bloco de código iniciado anteriormente.
        });
// Fecha o bloco de código iniciado anteriormente.
    });
// Fecha o bloco de código iniciado anteriormente.
}

// Exporta funções/objetos deste arquivo para que outros arquivos consigam importar e usar.
module.exports = {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    executar
// Fecha o bloco de código iniciado anteriormente.
};
