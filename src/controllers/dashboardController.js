let dashboardModel = require("../models/dashboardModel")

function totalFavoritos(req, res) {
    let fkUsuario = req.params.idUsuario

    if (fkUsuario == undefined) {
        return res.status(400).send("Usuário não encontrado")
    }
    else {
        dashboardModel.totalFavoritos(fkUsuario).then(function (resultado) {
            res.status(200).json(resultado)
        }).catch(function (erro) {
            res.status(500).json(erro.sqlMessage)
        })
    }
}
function porcentagemAcervo(req, res) {
    let fkUsuario = req.params.idUsuario

    if (fkUsuario == undefined) {
        return res.status(400).send("Usuário não encontrado")
    }
    else {
        dashboardModel.porcentagemAcervo(fkUsuario).then(function (resultado) {
            res.status(200).json(resultado)
        }).catch(function (erro) {
            res.status(500).json(erro.sqlMessage)
        })
    }
}
function livroMaisFavoritado(req, res) {
    dashboardModel.livroMaisFavoritado().then(function (resultado) {
        res.status(200).json(resultado)
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage)
    })
}
function topCincoGeneros(req, res) {
    dashboardModel.topCincoGeneros().then(function (resultado) {
        res.status(200).json(resultado)
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage)
    })
}
function generoMaisFavoritado(req, res) {
    dashboardModel.generoMaisFavoritado().then(function (resultado) {
        res.status(200).json(resultado)
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage)
    })
}
function topCincoLivros(req, res) {
    dashboardModel.topCincoLivros().then(function (resultado) {
        res.status(200).json(resultado)
    }).catch(function (erro) {
        res.status(500).json(erro.sqlMessage)
    })
}
function favoritosRecentes(req, res) {
    let fkUsuario = req.params.idUsuario

    if (fkUsuario == undefined) {
       return  res.status(400).send("Usuário não encontrado")
    }
    else {
        dashboardModel.favoritosRecentes(fkUsuario).then(function (resultado) {
            res.status(200).json(resultado)
        }).catch(function (erro) {
            res.status(500).json(erro.sqlMessage)
        })
    }
}

module.exports = {
    totalFavoritos,
    porcentagemAcervo,
    livroMaisFavoritado,
    generoMaisFavoritado,
    topCincoLivros,
    favoritosRecentes,
    topCincoGeneros,

}