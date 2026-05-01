// ============================================================
// ARQUIVO COMENTADO: src/controllers/usuarioController.js
// Comentários adicionados para explicar a função de cada parte do código.
// ============================================================
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var usuarioModel = require("../models/usuarioModel");
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var aquarioModel = require("../models/aquarioModel");

// Cria uma função. Essa função agrupa comandos para serem executados quando for chamada.
function autenticar(req, res) {
// Pega um valor enviado pelo front-end no corpo da requisição e guarda em uma variável.
    var email = req.body.emailServer;
// Pega um valor enviado pelo front-end no corpo da requisição e guarda em uma variável.
    var senha = req.body.senhaServer;

// Inicia uma condição. O código dentro do bloco só executa se a condição for verdadeira.
    if (email == undefined) {
// Define o status HTTP da resposta enviada para o front-end.
        res.status(400).send("Seu email está undefined!");
// Testa uma nova condição caso a anterior tenha dado falsa.
    } else if (senha == undefined) {
// Define o status HTTP da resposta enviada para o front-end.
        res.status(400).send("Sua senha está indefinida!");
// Executa este bloco quando as condições anteriores não foram atendidas.
    } else {

// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
        usuarioModel.autenticar(email, senha)
// Executa este trecho quando a operação assíncrona deu certo.
            .then(
// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
                function (resultadoAutenticar) {
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
                    console.log(`\nResultados encontrados: ${resultadoAutenticar.length}`);
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
                    console.log(`Resultados: ${JSON.stringify(resultadoAutenticar)}`); // transforma JSON em String

// Inicia uma condição. O código dentro do bloco só executa se a condição for verdadeira.
                    if (resultadoAutenticar.length == 1) {
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
                        console.log(resultadoAutenticar);

// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                        aquarioModel.buscarAquariosPorEmpresa(resultadoAutenticar[0].empresaId)
// Executa este trecho quando a operação assíncrona deu certo.
                            .then((resultadoAquarios) => {
// Inicia uma condição. O código dentro do bloco só executa se a condição for verdadeira.
                                if (resultadoAquarios.length > 0) {
// Envia uma resposta em formato JSON para o front-end.
                                    res.json({
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                                        id: resultadoAutenticar[0].id,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                                        email: resultadoAutenticar[0].email,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                                        nome: resultadoAutenticar[0].nome,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                                        senha: resultadoAutenticar[0].senha,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                                        aquarios: resultadoAquarios
// Fecha o bloco de código iniciado anteriormente.
                                    });
// Executa este bloco quando as condições anteriores não foram atendidas.
                                } else {
// Define o status HTTP da resposta enviada para o front-end.
                                    res.status(204).json({ aquarios: [] });
// Fecha o bloco de código iniciado anteriormente.
                                }
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                            })
// Testa uma nova condição caso a anterior tenha dado falsa.
                    } else if (resultadoAutenticar.length == 0) {
// Define o status HTTP da resposta enviada para o front-end.
                        res.status(403).send("Email e/ou senha inválido(s)");
// Executa este bloco quando as condições anteriores não foram atendidas.
                    } else {
// Define o status HTTP da resposta enviada para o front-end.
                        res.status(403).send("Mais de um usuário com o mesmo login e senha!");
// Fecha o bloco de código iniciado anteriormente.
                    }
// Fecha o bloco de código iniciado anteriormente.
                }
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
            ).catch(
// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
                function (erro) {
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
                    console.log(erro);
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
                    console.log("\nHouve um erro ao realizar o login! Erro: ", erro.sqlMessage);
// Define o status HTTP da resposta enviada para o front-end.
                    res.status(500).json(erro.sqlMessage);
// Fecha o bloco de código iniciado anteriormente.
                }
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
            );
// Fecha o bloco de código iniciado anteriormente.
    }

// Fecha o bloco de código iniciado anteriormente.
}

// Cria uma função. Essa função agrupa comandos para serem executados quando for chamada.
function cadastrar(req, res) {
    // Crie uma variável que vá recuperar os valores do arquivo cadastro.html
// Pega um valor enviado pelo front-end no corpo da requisição e guarda em uma variável.
    var nome = req.body.nomeServer;
// Pega um valor enviado pelo front-end no corpo da requisição e guarda em uma variável.
    var email = req.body.emailServer;
// Pega um valor enviado pelo front-end no corpo da requisição e guarda em uma variável.
    var senha = req.body.senhaServer;
// Pega um valor enviado pelo front-end no corpo da requisição e guarda em uma variável.
    var fkEmpresa = req.body.idEmpresaVincularServer;

    // Faça as validações dos valores
// Inicia uma condição. O código dentro do bloco só executa se a condição for verdadeira.
    if (nome == undefined) {
// Define o status HTTP da resposta enviada para o front-end.
        res.status(400).send("Seu nome está undefined!");
// Testa uma nova condição caso a anterior tenha dado falsa.
    } else if (email == undefined) {
// Define o status HTTP da resposta enviada para o front-end.
        res.status(400).send("Seu email está undefined!");
// Testa uma nova condição caso a anterior tenha dado falsa.
    } else if (senha == undefined) {
// Define o status HTTP da resposta enviada para o front-end.
        res.status(400).send("Sua senha está undefined!");
// Testa uma nova condição caso a anterior tenha dado falsa.
    } else if (fkEmpresa == undefined) {
// Define o status HTTP da resposta enviada para o front-end.
        res.status(400).send("Sua empresa a vincular está undefined!");
// Executa este bloco quando as condições anteriores não foram atendidas.
    } else {

        // Passe os valores como parâmetro e vá para o arquivo usuarioModel.js
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
        usuarioModel.cadastrar(nome, email, senha, fkEmpresa)
// Executa este trecho quando a operação assíncrona deu certo.
            .then(
// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
                function (resultado) {
// Envia uma resposta em formato JSON para o front-end.
                    res.json(resultado);
// Fecha o bloco de código iniciado anteriormente.
                }
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
            ).catch(
// Abre um bloco de código. Tudo dentro dele pertence a essa estrutura.
                function (erro) {
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
                    console.log(erro);
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
                    console.log(
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                        erro.sqlMessage
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
                    );
// Define o status HTTP da resposta enviada para o front-end.
                    res.status(500).json(erro.sqlMessage);
// Fecha o bloco de código iniciado anteriormente.
                }
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
            );
// Fecha o bloco de código iniciado anteriormente.
    }
// Fecha o bloco de código iniciado anteriormente.
}

// Exporta funções/objetos deste arquivo para que outros arquivos consigam importar e usar.
module.exports = {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    autenticar,
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    cadastrar
// Fecha o bloco de código iniciado anteriormente.
}
