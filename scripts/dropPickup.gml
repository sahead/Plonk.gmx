var roll = random(100)

// Drop Pickup
if (roll < 50) {
  instance_create(argument0, argument1, obj_pickupCommon);
} else if (roll < 80) {
  instance_create(argument0, argument1, obj_pickupUncommon);
} else {
  instance_create(argument0, argument1, obj_pickupRare);
}
