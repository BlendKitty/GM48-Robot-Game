windowSize = {
	screenResolutionHoriz : [240, 480, 720, 960, 1200, 0],
	screenResolutionVerti : [180, 360, 540, 720, 900, 0],
	arrayWorkaroundThing : 0
};

if !file_exists("Options.ini") {
	ini_open("Options.ini");
	//Normal Stuff
	ini_write_string("Video", "windowSize", 4);
	ini_write_string("Video", "CRTShader", false);
	ini_write_string("Video", "screenShake", true);
	ini_write_string("Video", "flashingLights", true);
	ini_close();
}
else {
	ini_open("Options.ini");
	windowSize.arrayWorkaroundThing = ini_read_real("Video", "WindowSize", 4);
	CRTShader = ini_read_real("Video", "CRTShader", false);
	screenShake = ini_read_real("Video", "screenShake", true);
	flashingLights = ini_read_real("Video", "flashingLights", true);
	ini_close();
}

room_set_viewport(rm_game, 0, true, 0, 0, windowSize.screenResolutionHoriz[windowSize.arrayWorkaroundThing], windowSize.screenResolutionVerti[windowSize.arrayWorkaroundThing]);

room_goto(rm_game);