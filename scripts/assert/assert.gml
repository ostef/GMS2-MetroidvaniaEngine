/// @func assert(assertion, message)
/// @desc Make an assertion and crash the game if it fails
/// @arg {bool} assertion
/// @arg {string} message
function assert(argument0, argument1) {
	var assertion = argument0;
	var message = argument1;

	if (!assertion)
	{
		log_fatal(" \n********** ASSERTION FAILED **********\n \n" + message + "\n \n*************************************");
	}



}
