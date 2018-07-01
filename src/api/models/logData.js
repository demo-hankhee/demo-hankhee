var mongoose = require('mongoose');
var Schema = mongoose.Schema;

var logDataSchema = new Schema({
    action: String,
    user: String,
    extra: String,
    division: Number 
});

var LogData = mongoose.model('Log', logDataSchema);

module.exports = LogData;