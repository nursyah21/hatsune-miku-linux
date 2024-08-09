extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var songs = utils.get_rand_song()
	$background.texture = load("res://images/thumbnails/"+songs[0]+'.webp')
	$song.stream = load("res://musics/songs/"+songs[0]+"-audio.ogg")
	$footer/playnow.text = "play\n"+songs[1]
	$background.scale = Vector2(0.8, 0.84)
	

func _process(delta):
	animated_text(delta)

var elapsed_time = 0.0
func animated_text(time):
	elapsed_time += time
	$pressanykey.modulate.a = .8 + .2 * sin(elapsed_time * PI)
	

func _input(event: InputEvent):
	if event.is_pressed():
		if event is InputEventJoypadButton or event is InputEventJoypadMotion:
			var text = event.as_text().split('=')[1].split(',')[0]
			print('joypad: '+ text)
		else:
			print('keyboard: '+ event.as_text())
