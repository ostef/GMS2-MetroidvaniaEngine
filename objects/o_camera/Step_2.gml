/// @desc Execute movement state
state_machine_execute();

// Clamp camera position
x = clamp(x, limitX1 + width / 2, limitX2 - width / 2);
y = clamp(y, limitY1 + height / 2, limitY2 - height / 2);
