// ============================================================
// ARQUIVO COMENTADO: src/routes/usuarios.js
// Comentários adicionados para explicar a função de cada parte do código.
// ============================================================
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var express = require("express");
// Define ou altera um valor usado pelo programa.
var router = express.Router();

// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var usuarioController = require("../controllers/usuarioController");

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
// Cria uma rota da API. Quando o navegador/front-end acessar esse caminho, a função interna será executada.
router.post("/cadastrar", function (req, res) {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    usuarioController.cadastrar(req, res);
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
})

// Cria uma rota da API. Quando o navegador/front-end acessar esse caminho, a função interna será executada.
router.post("/autenticar", function (req, res) {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    usuarioController.autenticar(req, res);
// Fecha o bloco de código iniciado anteriormente.
});

// Exporta funções/objetos deste arquivo para que outros arquivos consigam importar e usar.
module.exports = router;
