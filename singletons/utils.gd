extends Node2D

"""
example use:
	var songs = utils.get_rand_song()
	$background.texture = load("res://images/thumbnails/"+songs[0]+'.webp')
"""
func get_rand_song() -> Array:
	randomize() # seed random number generator
	
	var songs = game_data.songs
	var title = game_data.songs_title
	var idx = randi() % len(songs)	
		
	return [songs[idx], title[idx]]
	
"""
example use:
	$sprite.region_rect = utils.get_fullscreen()
"""
func get_fullscreen() -> Rect2:
	var viewport = get_viewport().size	
	return Rect2(0,0, viewport.x, viewport.y)

"""
# snippet code to animated text

example use:
	func _process(delta):
		animated_text(delta)

var elapsed_time = 0.0
func animated_text(time):
	elapsed_time += time
	$pressanykey.modulate.a = .8 + .2 * sin(elapsed_time * PI)
"""
