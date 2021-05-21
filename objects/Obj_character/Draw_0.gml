if(global.can == true){
shader_set(Sh_outline);
shader_set_uniform_f(upixelW, texelW);
shader_set_uniform_f(upixelH, texelH);
draw_self();
shader_reset();
}


if(global.can == false){
draw_self();
}

