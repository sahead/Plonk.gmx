var shooter = argument0;
var oid = shooter.object_index;
var name = object_get_name(oid);
switch (name) {
    case "obj_laserShooter":
        return 0;
    case "obj_spreadShooter":
        return 1;
    case "obj_grenadeShooter":
        return 2;
    case "obj_beamShooter":
        return 3;
    case "obj_missileShooter":
        return 4;
    default:
        return 0;
}
