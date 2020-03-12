/// @desc Initialize variables
xVelPrevious = 0.0;
yVelPrevious = 0.0;
xVel = 0.0;
yVel = 0.0;
xVelRemainder = 0.0;
yVelRemainder = 0.0;

state_machine_init();

grav = .4;

bWasGrounded = false;
bGrounded = false;
bWasStandingOnPlatform = false;
bStandingOnPlatform = false;
bWasOnSlope = false;
bOnSlope = false;
bFallOffPlatform = false;

bFacingLeft = false;
xScale = 1
yScale = 1;
rotation = 0.0;
