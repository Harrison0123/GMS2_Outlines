global.can = true;
global.nela = true;

upixelH = shader_get_uniform(Sh_outline, "pixelH"); 
upixelW = shader_get_uniform(Sh_outline, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));