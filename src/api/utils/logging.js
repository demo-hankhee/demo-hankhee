const LogData = require('../models/logData');

module.exports.log = (action, user, extra, division) => {
    let data = new LogData({ action, user, extra, division });
    data.save();
}