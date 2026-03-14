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
	_xvel = -max_speed;
}
if (InputPressed(INPUT_VERB.JUMP)) {
    _yvel -= jump_speed;
}
//_yvel = max(_yvel, max_jump_speed);
_yvel += grv
_yvel = min(_yvel, 12);

 move_and_collide(_xvel, _yvel, collision, undefined, undefined, undefined, max_speed, 12);