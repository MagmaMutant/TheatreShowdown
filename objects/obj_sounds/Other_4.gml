//switch(room){
//	case(rm_mm):
//		audio_play_sound(endmusic,1000,true)
//	case(rm_theatre):
//		audio_play_sound(theatrefight,1000,true)
//	case(rm_gameover):
//		audio_play_sound(endmusic,1000,true)
	
	
//
if playing{
	if room == rm_mm or room == rm_gameover{
		audio_resume_sound(endmusic)
	}
	if room == rm_theatre{
		audio_resume_sound(theatrefight)
	}
}