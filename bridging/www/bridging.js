var argscheck = require('cordova/argscheck'),
    utils = require('cordova/utils'),
    exec = require('cordova/exec');
;
    
var Bridging = function() {

};

Bridging.callEvent = function(event, payload, success, error) {
	var successCallback = function(result) {
		if (success) {
			success(result);
		}
	}, failureCallback = function(result) {
		if (error) {
			error(result);
		}
	};
	exec(
		successCallback,
		failureCallback,
		"Bridging",
		"callEvent",
		[event, payload]
	);
};

module.exports = Bridging;