extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var songs = utils.get_rand_song()
	$background.texture = load("res://images/thumbnails/"+songs+'.webp')
	$song.stream = load("res://musics/songs/"+songs+"-audio.ogg")
	
	$background.scale = Vector2(0.8, 0.84)
	
