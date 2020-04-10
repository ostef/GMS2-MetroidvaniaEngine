/// @desc Initialize variables
xVelPrevious = 0.0;
yVelPrevious = 0.0;
xVel = 0.0;
yVel = 0.0;
xVelRemainder = 0.0;
yVelRemainder = 0.0;

// Position limits
positionLimitX1 = -infinity;
positionLimitY1 = -infinity;
positionLimitX2 = infinity;
positionLimitY2 = infinity;

grav = .3;

// Grounding and slopes
bWasGrounded = false;
bGrounded = false;
bWasStandingOnPlatform = false;
bStandingOnPlatform = false;
bWasOnSlope = false;
bOnSlope = false;
slopeAngle = 0;
bFallOffPlatform = false;

// Graphics
bFacingLeft = false;
xScale = 1
yScale = 1;
rotation = 0.0;
