# api_mocker
###Simple Node JS API mocker using Express for routing

Clone into the repo:
```shell
git clone https://github.com/drpain/api_mocker.git
```

### REQUIRES, NodeJS and NPM to be installed
#### Some installation instructions can be found here:

https://docs.npmjs.com/getting-started/installing-node 

https://nodejs.org/download/

### TESTS to ensure it's installed

In your terminal run the version command:
```shell
node -v
```

Which should give you the version of NodeJS you are running. Mine gave ``v0.12.7`` which is the current latest version. 

For NPM the command would similarly be:
```shell
npm -v
```

Which in my case gave ``2.11.3``, but this would change all the time. 

### INSTALLING API MOCKER ITSELF

In your terminal run the install.sh command as follows within the api_mocker directory:
```shell
./install.sh
```

It will prompt you when it needs sudo rights to do something. 

### STARTING API MOCKER SERVER
If there were no errors during the installation, you can go ahead and start the webserver with the follow commands.

#### Default port: 3000
```shell
./start.sh
```

#### For a custom port, just append the port to the start command. eg: Port 8080:
```shell
./start.sh 8080
```

### USAGE
Open up the express application file ``app/app.js``.

The following section defines what happens with the inbound request. This is what gets output when you open in your browser with http://localhost/ or http://localhost/users as an example.
```javascript
// RESPONSE HANDLERS
var index = require('./routes/index');
var users = require('./routes/users');
```

And then you have to tell express which route file to use for which inbound URL. eg; For http://localhost/ use routes/index.js and for http://localhost/users/ use routes/users.js.
```javascript
// ROUTE TO RESPONSE HANDLER MAPPING
app.use('/', index);
app.use('/users', users);
```

Let's say we want to add a route for http://localhost/``account/``, then you will need to at the very least add a route file, and mapping. 
##### Adding the route file
####1. Create the file called ``account.js`` in app/routes. You could use the following as hypothetical content:
```javascript
// app/routes/account.js
var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {

    // JSON to respond with
    var data = {
        'state' : "success",
        'page' : "/account",
        'content' : "Welcome to your account page",
        'actions' :  {
            "id": 0,
            "name": "view"
          },
          {
            "id": 1,
            "name": "edit"
          },
          {
            "id": 2,
            "name": "newsletter"
          }
      };

    res.json(data);
});

module.exports = router;

```
####2. Add it to the "RESPONSE HANDLERS" 
``var account = require('./routes/account');``
####3. Add the "ROUTE TO RESPONSE HANDLER MAPPING" for it 
``app.use('/account', account);``

### EXPRESS documentation
Want to know more about how Express handles routing. Check out the awesome documentation:
http://expressjs.com/guide/routing.html
