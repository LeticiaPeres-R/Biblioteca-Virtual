var express = require("express")
var router = express.Router()

var livrosController = require("../controllers/livrosController")

router.get("/listar", function (req, res) {
    livrosController.listar(req, res)
});

router.get("/detalhar/:idLivro", function (req, res) {
    livrosController.detalhar(req,res)
})


module.exports = router;