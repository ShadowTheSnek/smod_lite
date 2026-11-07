function player_slide() 
{
	var go_to_mach = false
	var ismach2 = false
	
	hsp = movespeed * xscale
	
	movespeed = max(movespeed - 0.4, 0);
	
	image_speed = 0.35
	switch sprite_index
	{
		case global.sprite_player_machslideboost:
		case global.sprite_player_machslideboost3:
			ismach2 = sprite_index == global.sprite_player_machslideboost

			if anim_ended()
			{
				if grounded
					go_to_mach = true
				else
					sprite_index = ismach2 ? global.sprite_player_machslideboostfall : global.sprite_player_machslideboost3fall
			}
			break
		case global.sprite_player_machslideboostfall:
		case global.sprite_player_machslideboost3fall:
			ismach2 = sprite_index == global.sprite_player_machslideboostfall
			go_to_mach = grounded
			break
		case global.sprite_player_machslidestart:
		case global.sprite_player_machslide_loop:
			if sprite_index == global.sprite_player_machslidestart
				reset_anim_on_end(spr_player_machslide_loop)
			if scr_hitwall(x + xscale, y)
			{
				reset_anim(global.sprite_player_wallsplat)
				fmod_studio_event_instance_oneshot_3d("event:/sfx/player/splat", x, y)
				state = states.bump
			}
			if !movespeed
			{
				reset_anim(global.sprite_player_machslideend)
				state = states.normal
			}
			break
	}
	
	if grounded && !particle_contains_sprite(spr_dashcloud)
	{
		with create_effect(x, y, spr_dashcloud)
			image_xscale = other.xscale
	}
	
	if go_to_mach
	{
		sprite_index = ismach2 ? global.sprite_player_mach2 : global.sprite_player_mach3
		state = ismach2 ? states.mach2 : states.mach3
		movespeed = ismach2 ? 8 : 12
		xscale *= -1
	}
	
	instakill = sprite_index == global.sprite_player_machslideboost3;
}
