// gradually_turn.gml
// --------
// Gradually turns an object towards its target
//

// FORMAT:
// gradually_turn(objToTurn, target, turnSpeed, accuracy);
//
// <objToTurn> takes an object
// <target> takes an object
// <turnSpeed> takes a number
// <accuracy> takes a number between 0 and 1
//

var objToTurn = argument0;
var targetDir = argument1;
var turnSpeed = argument2 / 100000;             // Tweak the 100000 if you're not getting the desired results
var accuracy = clamp(argument3, 0.05, 0.95);    // Don't want perfect accuracy or perfect inaccuracy

// Test if parameters are valid
if(!instance_exists(objToTurn)) return -1;

// Reverse nomalize accuracy for calculations
accuracy = abs(accuracy - 1.0);

// Get the target direction and facing direction
var facingDir = objToTurn.image_angle%360;

// Calculate the difference between target direction and facing direction
var facingMinusTarget = facingDir - targetDir;
var angleDiff = facingMinusTarget;
if(abs(facingMinusTarget) > 180)
{
    if(facingDir > targetDir)
    {
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    }
    else
    {
        angleDiff = (360 - targetDir) + facingDir;
    }
}

// Gradually rotate object
var leastAccurateAim = 30;
if (abs(angleDiff) < abs(turnSpeed * delta_time)) {
    objToTurn.image_angle = targetDir;
} else if(angleDiff > 0)
{
    objToTurn.image_angle -= turnSpeed * delta_time;
}
else if(angleDiff < 0)
{
    objToTurn.image_angle += turnSpeed * delta_time;
}
