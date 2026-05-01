// ============================================================
// ARQUIVO COMENTADO: src/routes/index.js
// Comentários adicionados para explicar a função de cada parte do código.
// ============================================================
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var express = require("express");
// Define ou altera um valor usado pelo programa.
var router = express.Router();

// Cria uma rota da API. Quando o navegador/front-end acessar esse caminho, a função interna será executada.
router.get("/", function (req, res) {
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    res.render("index");
// Fecha o bloco de código iniciado anteriormente.
});

// Exporta funções/objetos deste arquivo para que outros arquivos consigam importar e usar.
module.exports = router;
