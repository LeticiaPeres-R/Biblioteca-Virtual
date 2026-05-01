var favoritosModel = require("../models/favoritosModel");

function favoritar(req, res) {

    var fkUsuario = req.body.fkUsuario;
    var fkLivro = req.body.fkLivro;

    if (fkUsuario == undefined) {
        res.status(400).send("Usuário não encontrado")
    }
    else if (fkLivro == undefined) {
        res.status(400).send("Livro não encontrado")
    }
    else {
        favoritosModel.favoritar(fkUsuario, fkLivro).then(function (resultado) {
            res.status(200).json(resultado);
        }).catch(function (erro) {
            res.status(500).json(erro.sqlMessage)
        })

    }
}

function desfavoritar(req, res) {
    var fkUsuario = req.body.fkUsuario;
    var fkLivro = req.body.fkLivro;
    if (fkUsuario == undefined) {
        res.status(400).send("Usuário não encontrado")
    }
    else if (fkLivro == undefined) {
        res.status(400).send("Livro não encontrado")
    }
    else {
        favoritosModel.desfavoritar(fkUsuario, fkLivro).then(function (resultado) {
            res.status(200).json(resultado);
        }).catch(function (erro) {
            res.status(500).json(erro.sqlMessage)
        })

    }

}


function listar(req, res) {
    var fkUsuario = req.params.idUsuario;
    if (fkUsuario == undefined) {
        res.status(400).send("Usuário não encontrado")
    }
    else {
        favoritosModel.listar(fkUsuario).then(function (resultado) {
            res.status(200).json(resultado);
        }).catch(function (erro) {
            res.status(500).json(erro.sqlMessage)
        })

    }

}

module.exports = {
    favoritar,
    desfavoritar,
    listar
}