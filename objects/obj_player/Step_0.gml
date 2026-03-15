if (InputCheck(INPUT_VERB.ACTION) && (current_time - shoot_cooldown) > 1000) {
    _inst = instance_create_depth(x, y, depth, obj_player_laser);
    _inst.direction = direction;
    _inst.collision = collision;
    shoot_cooldown = current_time;
}