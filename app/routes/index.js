var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {

    // JSON to respond with
    var data = {
        'state' : "success",
        'page' : "/",
        'hello' : "World"
    };

    res.json(data);
});

module.exports = router;
