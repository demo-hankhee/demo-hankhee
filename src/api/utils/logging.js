const LogData = require('../models/logData');

module.exports.log = (action, user, extra, division) => {
    new LogData({ action, user, extra, division }).save();
}