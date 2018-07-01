const UserController = require('../api/controllers/user');
const logging = require('../api/utils/logging');

const user = (app) => {
    app.post('/api/login', (req, res) => {
        logging.log('login', '', `name ${req.body.name} password: ${req.body.password}`, 0);
        let controller = new UserController();
        controller.login(req.body.name, req.body.password)
            .then(token => {
                logging.log('login success', '', '', 0);
                res.send(token);
            })

            .catch(error =>{
                logging.log('login fail', '', '', 0);
                res.status(403).send(`Error: ${error}`)}
            );
    });
}

module.exports = user; 