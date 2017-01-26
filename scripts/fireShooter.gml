if (!reloading && can_shoot) {
    shooter = peekShooter(0);
    if (shooter.cost < energy) {
        energy -= shooter.cost;
        can_shoot = false;
        alarm_set(0, shooter.delay);
        with(shooter) {
          event_user(0);
        }
        pullShooter();
    }
}
