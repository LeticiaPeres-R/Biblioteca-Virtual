var livroModel = require("../models/livroModel")

function listar(req, res) {
    livroModel.listar().then(function (resultado) {
        res.status(200).json(resultado);
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage);
    })
}

module.exports = {
    listar
}