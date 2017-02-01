var aX = argument0;
var aY = argument1;
var tName = argument2;

var entry = instance_create(aX, aY, obj_deckListEntry);

entry.image_speed = 0;
entry.image_index = pg_inv_stringToIndex(tName);
