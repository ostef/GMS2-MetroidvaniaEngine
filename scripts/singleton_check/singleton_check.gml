/// @func singleton_check()
/// @desc Assert that only one instance of the object exists
function singleton_check() {
	assert(instance_number(self) <= 1, "Multiple instances of singleton object detected!");



}
