let express = require("express")
let router = express.Router()

let dashboardController = require("../controllers/dashboardController")

router.get("/totalFavoritos/:idUsuario", function(req, res){
    dashboardController.totalFavoritos(req, res)
})
router.get("/porcentagemAcervo/:idUsuario", function(req, res){
    dashboardController.porcentagemAcervo(req, res)
})
router.get("/livroMaisFavoritado", function(req, res){
    dashboardController.livroMaisFavoritado(req, res)
})
router.get("/generoMaisFavoritado", function(req, res){
    dashboardController.generoMaisFavoritado(req, res)
})
router.get("/topCincoGeneros", function(req, res){
    dashboardController.topCincoGeneros(req, res)
})
router.get("/topCincoLivros", function(req, res){
    dashboardController.topCincoLivros(req, res)
})
router.get("/favoritosRecentes/:idUsuario", function(req, res){
    dashboardController.favoritosRecentes(req, res)
})

module.exports = router
