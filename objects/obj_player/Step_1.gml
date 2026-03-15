_hor = InputCheck(INPUT_VERB.RIGHT) - InputCheck(INPUT_VERB.LEFT);
_ver = InputCheck(INPUT_VERB.DOWN) - InputCheck(INPUT_VERB.UP);

if (!InputCheck(INPUT_VERB.RIGHT) && !InputCheck(INPUT_VERB.LEFT)) {
    
    if (_xvel < 4 ) {
        _xvel = 0
    } else {
        _xvel *= 0.8
    } 
}


if (_hor != 0) {
   _xvel += move_speed * _hor;
}

//if (_ver != 0) {
//   _yvel = move_speed * _ver;
//}

if (_xvel > max_speed) {
	_xvel = max_speed;
}

if (_xvel < -max_speed) {
	_xvel = -jump_speed;
}

//_yvel = max(_yvel, max_jump_speed);
if (place_meeting(x, y + 8, collision)) {
    _yvel = 0;
} else {
    _yvel += grv;
}

if (place_meeting(x, y + 8, collision) && InputCheck(INPUT_VERB.JUMP)) {
    _yvel = -jump_speed;
}

if (_xvel > 0) {
    direction = 0
} else if (_xvel < 0) {
    direction = 180
}

_xvel = round(_xvel);
_yvel = round(_yvel);
 move_and_collide(_xvel, _yvel, collision, undefined, undefined, undefined, max_speed, max_jump_speed);