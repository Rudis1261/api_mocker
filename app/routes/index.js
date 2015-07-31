var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {

    // JSON to respond with
    var data = {
        'page' : "/",
        'hello' : "World"
    };

    res.json(data);
});

module.exports = router;
