var shooter = ds_list_find_value(inv, nInd);
nInd--;
if (nInd == -1) {
    with(obj_laserCannon) {
      reloading = true;
      alarm_set(1, 80);
    }
}
return shooter;
