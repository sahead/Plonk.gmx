/** Creates the deck and clip from the deckList in gameReference. */

with (obj_gameReference) {
    deck = ds_list_create();
    clipInd = 0;
    for (var i = 0; i < ds_list_size(deckList); i++) {
        var xStr = ds_list_find_value(deckList, i);
        debugMsg(xStr);
        var xShooter = pg_deck_stringToShooter(xStr)
        pg_deck_add(xShooter);
    }
    pg_clip_reload();
}
