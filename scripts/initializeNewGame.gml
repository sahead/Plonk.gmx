window_set_fullscreen(true);

randomize();

initializeShooterInventoryAndQueue();

addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));
addToInventory(instance_create(0, 0, obj_grenadeShooter));

shuffleShooterQueue();

with(obj_laserCannon) {
  reloading = false;
}
