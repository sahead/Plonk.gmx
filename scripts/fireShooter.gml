if (!reloading && can_shoot) {
    shooter = pg_clip_peek(0);
    if (shooter.cost < energy) {
        shotDelay += shooter.delay;
        alarm_set(0, shooter.delay);
        energy -= shooter.cost;
        can_shoot = false;
        with(shooter) {
          event_user(0);
        }
        pg_clip_pop();
    }
}
