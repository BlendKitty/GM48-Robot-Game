windowSize = {
	screenResolutionHoriz : [240, 480, 720, 960, 1200, 0],
	screenResolutionVerti : [180, 360, 540, 720, 900, 0],
	arrayWorkaroundThing : 0
};

ini_open("Options.ini");
windowSize.arrayWorkaroundThing = ini_read_real("Video", "WindowSize", 4);
ini_close();

//view_camera[0] = camera_create_view(0, 0, windowSize.screenResolutionVerti[windowSize.arrayWorkaroundThing], windowSize.screenResolutionHoriz[windowSize.arrayWorkaroundThing], 0, noone, -1, -1, -1, -1);
window_set_size(windowSize.screenResolutionHoriz[windowSize.arrayWorkaroundThing], windowSize.screenResolutionVerti[windowSize.arrayWorkaroundThing]);