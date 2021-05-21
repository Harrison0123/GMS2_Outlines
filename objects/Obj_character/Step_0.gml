
//Check to draw or not outlines
if(keyboard_check_released(ord("C"))){

switch(global.can){

case true:
global.can = false; 
break;

case false:
global.can = true;
break;

}

}

if(keyboard_check_released(ord("D"))){

switch(global.nela){

case true:
global.nela = false; 
break;

case false:
global.nela = true;
break;

}

}



//just the found
if(global.nela == true){
if(!audio_is_playing(snd_titanium)){
audio_play_sound(snd_titanium, 1, true);
}
}else{
audio_stop_all();
}

