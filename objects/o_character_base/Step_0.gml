/// @desc Execute current state
state_machine_execute();

// Handle sub-pixel movement
xVelRemainder += xVel;
xVel = floor(xVelRemainder);
xVelRemainder -= xVel;

yVelRemainder += yVel;
yVel = floor(yVelRemainder);
yVelRemainder -= yVel;

// Update previous velocity
xVelPrevious = xVel;
yVelPrevious = yVel;
