switch (argument0) {
    case "laser":
        return instance_create(0, 0, obj_laserShooter);
    case "spread":
        return instance_create(0, 0, obj_spreadShooter);
    case "grenade":
        return instance_create(0, 0, obj_grenadeShooter);
    case "beam":
        return instance_create(0, 0, obj_beamShooter);
    case "missile":
        return instance_create(0, 0, obj_missileShooter);
}
