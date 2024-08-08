extends Node2D

"""
example use:
	var songs = utils.get_rand_song()
	$background.texture = load("res://images/thumbnails/"+songs+'.webp')
"""
func get_rand_song() -> String:
	randomize() # seed random number generator
	
	var arr = game_data.songs
	var idx = randi() % len(arr)	
		
	return arr[idx]
	
"""
example use:
	$sprite.region_rect = utils.get_fullscreen()
"""
func get_fullscreen() -> Rect2:
	var viewport = get_viewport().size	
	return Rect2(0,0, viewport.x, viewport.y)
