var express = require("express");
var router = express.Router();

var favoritosController = require("../controllers/favoritosController");

router.post("/favoritar", function(req, res) {
    favoritosController.favoritar(req, res);
});

router.delete("/desfavoritar", function (req, res) {
    favoritosController.desfavoritar(req, res);
})

router.get("/listar/:idUsuario", function(req, res){
    favoritosController.listar(req, res)
});

module.exports = router
