var service_types = require('./service_types.js');

function validator(input) {
    var service_type = input.service_type;
    if (
        service_type == service_types.rehearsal ||
        service_type == service_types.performance
    ) {
        return true;
    } else {
        return {
            error: true,
            errmsg: 'Service type must be rehearsal or performance'
        };
    }
}

module.exports = validator;
