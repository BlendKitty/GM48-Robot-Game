if !file_exists("Options.ini") {
	ini_open("Options.ini");
	//Normal Stuff
	ini_write_string("Video", "windowSize", 2);
	ini_write_string("Video", "CRTShader", false);
	ini_write_string("Video", "screenShake", true);
	ini_write_string("Video", "flashingLights", true);
	ini_close();
}

ini_open("Options.ini");
CRTShader = ini_read_real("Video", "CRTShader", false);
screenShake = ini_read_real("Video", "screenShake", true);
flashingLights = ini_read_real("Video", "flashingLights", true);
ini_close();

room_goto(rm_game);