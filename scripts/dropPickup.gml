var roll = random(100)

// Drop Pickup
if (roll < 33) {
  instance_create(argument0, argument1, obj_spreadPickup);
} else if (roll < 66) {
  instance_create(argument0, argument1, obj_beamPickup);
} else {
  instance_create(argument0, argument1, obj_grenadePickup);
}
