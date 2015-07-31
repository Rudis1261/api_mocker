var express = require('express');
var router = express.Router();

router.get('/:user_id', function(req, res, next) {

    // JSON to respond with
    var response = {
        'page' : "/users",
        'state' : "failure",
        'message' : "No user found with the id"
    };

    // Generate some JSON with a format
    var users = [{
        "id": 1,
        "balance": "3,493.50",
        "picture": "http://placehold.it/32x32",
        "age": 20,
        "name": "Irene Ortiz",
        "email": "ireneortiz@quordate.com"
      },
      {
        "id": 2,
        "balance": "2,983.55",
        "picture": "http://placehold.it/32x32",
        "age": 21,
        "name": "Teresa Bowers",
        "email": "teresabowers@quordate.com"
      },
      {
        "id": 3,
        "balance": "3,211.09",
        "picture": "http://placehold.it/32x32",
        "age": 34,
        "name": "Latisha Griffin",
        "email": "latishagriffin@quordate.com"
      },
      {
        "id": 4,
        "balance": "1,287.86",
        "picture": "http://placehold.it/32x32",
        "age": 40,
        "name": "Sharpe Massey",
        "email": "sharpemassey@quordate.com"
      },
      {
        "id": 5,
        "balance": "1,096.98",
        "picture": "http://placehold.it/32x32",
        "age": 39,
        "name": "Alicia Branch",
        "email": "aliciabranch@quordate.com"
      }];

    // If we have a user, respond with the data
    var getUser = req.params.user_id || false;
    if (getUser !== false && typeof users[(getUser+1)] !== "undefined") {

        // Modify the response
        response.state = "success";
        response.message = "Find the data";
        response.data = users[(getUser+1)];
    }

    // Respond with the data
    res.json(response);
});

module.exports = router;
