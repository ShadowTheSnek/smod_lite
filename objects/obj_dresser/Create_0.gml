make_clothes_inst = function(_name, _desc, _pal_ix, _pattern = noone) constructor
{
	name = _name
	description = _desc
	pal_ix = _pal_ix
	pattern = _pattern
}

clothes_selected = 0

if obj_player.char == "P" {
global.sprite_player_palette = pal_peppino
clothes_arr = [	
	new make_clothes_inst("Classic Cook",		"The one and only.",											2),
	new make_clothes_inst("Unfunny Cook",		"Ha.",															3),
	new make_clothes_inst("Money Green",		"Green, like money!",											4),
	new make_clothes_inst("SAGE Blue",			"Nostalgia bait.",												5),
	new make_clothes_inst("Blood Red",			"Don't worry, it's just stained in pizza sauce.",				6),
	new make_clothes_inst("TV Purple",			"You are purple perfection.",									7),
	new make_clothes_inst("Dark Cook",			"For masochists.",												8),
	new make_clothes_inst("Shitty Cook",		"You smell like shit.",											9),
	new make_clothes_inst("Golden God",			"Try P ranking next time!",										10),
	new make_clothes_inst("Garish Cook",		"Flashy!",														11),
	new make_clothes_inst("Mooney Orange",		"Donating to the poor, how sweet!",								12),
	// Patterns
	new make_clothes_inst("Funny Polka",		"HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA",				1,		pat_funny),
	new make_clothes_inst("Itchy Sweater",		"Thanks granny.",												1,		pat_itchy),
	new make_clothes_inst("Pizza Man",			"BECOME THE PIZZA!",											1,		pat_pizza),
	new make_clothes_inst("Bowling Stripes",	"Strike!",														1,		pat_stripes),
	new make_clothes_inst("Goldemanne",			"Ooooh, Shiny!",												1,		pat_goldemanne),
	new make_clothes_inst("Bad Bones",			"Good job, you're doing awful.",								1,		pat_bones),
	new make_clothes_inst("PP Shirt",			"Register now for 25% off your next order at Peppino Pizza.",	1,		pat_pp),
	new make_clothes_inst("War Camo",			"Is he a war veteran? Or is he just crazy?",					1,		pat_war),
	new make_clothes_inst("John Suit",			"Made from the dead remains of johns.",							1,		pat_john),
	new make_clothes_inst("Candy Wrapper",		"Not tacky at all.",											1,		pat_candy),
	new make_clothes_inst("Bloodstained",		"Only a little sauce, scary!",									1,		pat_bloodstained),
	new make_clothes_inst("Autumn",				"That one flannel you wear for Thanksgiving",					1,		pat_autumn),
	new make_clothes_inst("Pumpkin",			"I'm going to carve you.",										1,		pat_pumpkin),
	new make_clothes_inst("Fur",				"Furry!",														1,		pat_fur),
	new make_clothes_inst("Eyes",				"I see you.",													1,		pat_eyes),
]

switch obj_player.pal_select
	{
		case 0:
		case 2:
		case 3:
		case 4:
		case 5:
		case 6:
		case 7:
		case 8:
		case 9:
		case 10:
		case 11:
		case 12:
//Patterns
	case 1: 
		switch obj_player.pattern_spr
		{
			case pat_funny: clothes_selected = 11 break;
			case pat_itchy: clothes_selected = 12 break;
			case pat_pizza: clothes_selected = 13 break;
			case pat_stripes: clothes_selected = 14 break;
			case pat_goldemanne: clothes_selected = 15 break;
			case pat_bones: clothes_selected = 16 break;
			case pat_pp: clothes_selected = 17 break;
			case pat_war: clothes_selected = 18 break;
			case pat_john: clothes_selected = 19 break;
			case pat_candy: clothes_selected = 20 break;
			case pat_bloodstained: clothes_selected = 21 break;
			case pat_autumn: clothes_selected = 22 break;
			case pat_pumpkin: clothes_selected = 23 break;
			case pat_fur: clothes_selected = 24 break;
			case pat_eyes: clothes_selected = 25 break;
		}
		break;
	}
}

if obj_player.char == "N" {
global.sprite_player_palette = pal_noise
clothes_arr = [	
	new make_clothes_inst("Test",			"The one and only.",											2),
	new make_clothes_inst("Test2",			"Ha.",															3),
	new make_clothes_inst("Test3",			"Green, like money!",											4),
	new make_clothes_inst("Test4",			"Nostalgia bait.",												5),
]

switch obj_player.pal_select
	{
		case 0:
		case 2:
		case 3:
		case 4:
		case 5:
	}
}
alph = 0


