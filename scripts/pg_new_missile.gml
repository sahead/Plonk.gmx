var aX = argument0;
var aY = argument1;
var aDirection = argument2;
var shot = instance_create(aX, aY, obj_homeMissile);
shot.image_angle = aDirection;
shot.direction = aDirection;

/** Create logic here so that it can use passed in variables. */
with (shot) {
    var pEnemy = "null";
    var se = self;
    var cDist = 999999;
    with (obj_enemy) {
        var pd = point_direction(se.x, se.y, self.x, self.y);
        if (abs(angle_difference(pd, se.direction)) < 65) {
            var dist = distance_to_object(se);
            debugMsg("Enemy " + string(pEnemy) + " at Found Distance:" + string(dist));
            if (dist < cDist) {
               pEnemy = self;
               cDist = dist;
               debugMsg("Enemy " + string(pEnemy) + " at Closer Distance:" + string(dist));
            }
        }
    }
    cEnemy = pEnemy;
    var dDist = distance_to_object(cEnemy);
    debugMsg("Chose enemy " + string(cEnemy) + " at distance " + string(cDist) +
     " and is actually " + string(dDist) + "away.");
    speed = 8;
}
