const UserController = require('../api/controllers/user');
const logging = require('../api/utils/logging');

const user = (app) => {
    app.post('/api/login', (req, res) => {
        let controller = new UserController();
        controller.login(req.body.name, req.body.password)
            .then(token => {
                res.send(token);
            })

            .catch(error =>{
                res.status(403).send(`Error: ${error}`)}
            );
    });
}

module.exports = user; 