// ============================================================
// ARQUIVO COMENTADO: app.js
// Comentários adicionados para explicar a função de cada parte do código.
// ============================================================
// var ambiente_processo = 'producao';
// Define ou altera um valor usado pelo programa.
var ambiente_processo = 'desenvolvimento';

// Define ou altera um valor usado pelo programa.
var caminho_env = ambiente_processo === 'producao' ? '.env' : '.env.dev';
// Acima, temos o uso do operador ternário para definir o caminho do arquivo .env
// A sintaxe do operador ternário é: condição ? valor_se_verdadeiro : valor_se_falso

// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
require("dotenv").config({ path: caminho_env });

// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var express = require("express");
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var cors = require("cors");
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var path = require("path");
// Define ou altera um valor usado pelo programa.
var PORTA_APP = process.env.APP_PORT;
// Define ou altera um valor usado pelo programa.
var HOST_APP = process.env.APP_HOST;

// Define ou altera um valor usado pelo programa.
var app = express();

// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var indexRouter = require("./src/routes/index");
// Importa o módulo/arquivo indicado para que este arquivo consiga usar suas funções.
var usuarioRouter = require("./src/routes/usuarios");

var favoritosRouter = require("./src/routes/favoritos")

var livrosRouter = require("./src/routes/livros")

var dashboardRouter = require("./src/routes/dashboard")

// Registra um middleware ou uma rota no Express para a aplicação usar.
app.use(express.json());
// Registra um middleware ou uma rota no Express para a aplicação usar.
app.use(express.urlencoded({ extended: false }));
// Registra um middleware ou uma rota no Express para a aplicação usar.
app.use(express.static(path.join(__dirname, "public")));

// Registra um middleware ou uma rota no Express para a aplicação usar.
app.use(cors());

// Registra um middleware ou uma rota no Express para a aplicação usar.
app.use("/", indexRouter);
// Registra um middleware ou uma rota no Express para a aplicação usar.
app.use("/usuarios", usuarioRouter);
// Registra um middleware ou uma rota no Express para a aplicação usar.

app.use("/favoritos", favoritosRouter)

app.use("/livros", livrosRouter)

app.use("/dashboard", dashboardRouter)

// Inicia o servidor e deixa a API pronta para receber requisições.
app.listen(PORTA_APP, function () {
// Mostra uma mensagem no terminal ou no console para ajudar a testar e depurar.
    console.log(`
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    \n\n\n                                                                                                 
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    Servidor do seu site já está rodando! Acesse o caminho a seguir para visualizar .: http://${HOST_APP}:${PORTA_APP} :. \n\n
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    Você está rodando sua aplicação em ambiente de .:${process.env.AMBIENTE_PROCESSO}:. \n\n
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    \tSe .:desenvolvimento:. você está se conectando ao banco local. \n
// Linha de código da lógica do sistema. Leia junto com as linhas próximas para entender o fluxo completo.
    \t\tPara alterar o ambiente, comente ou descomente as linhas 1 ou 2 no arquivo 'app.js'\n\n`);
// Fecha o bloco de código iniciado anteriormente.
});
