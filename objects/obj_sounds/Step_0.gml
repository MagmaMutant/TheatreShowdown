//if playingC == false and playingOOC == false{
//	if room == rm_mm or room = rm_gameover{
//		playingOOC = true
//		audio_play_sound(endmusic,1000,true)
//	}
//	if room == rm_theatre{
//		playingC = true
//		audio_play_sound(theatrefight,1000,true)
//	}
//}
if eitherpress(gp_padl){	
	if playing{
		if room == rm_theatre{
			audio_pause_sound(theatrefight)
		}
		if room == rm_mm or room = rm_gameover  or room == rm_selection{
			audio_pause_sound(endmusic)
		}
		
		playing = false
	}

	else{
		if room == rm_theatre{
			audio_resume_sound(theatrefight)
		}
		if room == rm_mm or room = rm_gameover or room == rm_selection{
			audio_resume_sound(endmusic)
		}
		
		playing = true	
	}
}