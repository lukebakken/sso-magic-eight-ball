var assert = require('assert');
var validator = require('../lib/validator.js');
var service_types = require('../lib/service_types.js');

describe('validator', function() {
    it('accepts valid service type', function() {
        var input = { service_type: service_types.rehearsal };
        assert(validator(input));
    });
    it('returns error on invalid service type', function() {
        var input = { service_type: 'foobar' };
        var got = validator(input);
        var want = {
            error: true,
            errmsg: 'Service type must be rehearsal or performance'
        };
        assert.deepStrictEqual(got, want);
    });
});
