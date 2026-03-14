_hor = InputCheck(INPUT_VERB.RIGHT) - InputCheck(INPUT_VERB.LEFT);
_ver = InputCheck(INPUT_VERB.DOWN) - InputCheck(INPUT_VERB.UP);
_xvel = 0;


if (_hor != 0) {
   _xvel = move_speed * _hor;
}

if (_ver != 0) {
   _yvel = move_speed * _ver;
}

if (_xvel > max_speed) {
	_xvel = max_speed;
}

if (_xvel < -max_speed) {
	_xvel = -jump_speed;
}

//_yvel = max(_yvel, max_jump_speed);
if (place_meeting(x, y + 2, collision)) {
    show_debug_message("banana")
    _yvel = 0;
} else {
    _yvel += grv;
}

if (place_meeting(x, y + 2, collision) && InputCheck(INPUT_VERB.JUMP)) {
    _yvel = -jump_speed;
    show_debug_message("banana");
}

 move_and_collide(_xvel, _yvel, collision, undefined, undefined, undefined, max_speed, 12);