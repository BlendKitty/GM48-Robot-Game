_hor = InputPressed(INPUT_VERB.RIGHT) - InputPressed(INPUT_VERB.LEFT);
_ver = InputPressed(INPUT_VERB.DOWN) - InputPressed(INPUT_VERB.UP);

if (_hor != 0 || _ver != 0) {
    move_and_collide(move_speed * _hor, move_speed * _ver, collision, undefined, undefined, undefined), move_speed, move_speed
}