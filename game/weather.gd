
extends Node2D

# member variables here, example:
# var a=2
var weather = 1
var currentMusic
var musicTime = 0.0


func _ready():
	set_process_input(true)
	currentMusic = get_node("Music1")
	currentMusic.play()

func _input(event):
	if event.is_action_pressed("one"):
		if weather != 1:
			get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.2, get_node("Bleh").get_pos().y))
			print("HEA")
			musicTime = currentMusic.get_pos()
			currentMusic.stop()
			currentMusic = get_node("Music1")
			currentMusic.play()
			currentMusic.seek_pos(musicTime)
		weather = 1
	if event.is_action_pressed("two"):
		if weather != 2:
			get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.4, get_node("Bleh").get_pos().y))
			musicTime = currentMusic.get_pos()
			stop_music()
			currentMusic = get_node("Music2")
			currentMusic.play()
			currentMusic.seek_pos(musicTime)
		weather = 2
	if event.is_action_pressed("three"):
		if weather != 3:
			get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.6, get_node("Bleh").get_pos().y))
			musicTime = currentMusic.get_pos()
			stop_music()
			currentMusic = get_node("Music3")
			currentMusic.play()
			currentMusic.seek_pos(musicTime)
		weather = 3
	if event.is_action_pressed("four"):
		if weather != 4:
			get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.8, get_node("Bleh").get_pos().y))
			musicTime = currentMusic.get_pos()
			stop_music()
			currentMusic = get_node("Music4")
			currentMusic.play()
			currentMusic.seek_pos(musicTime)
		weather = 4
		
func stop_music():
	currentMusic.stop()
	#print("hey, shoulda stopped")
	

func _process(delta):
	
	if weather == 1:
		pass
	elif weather == 2:
		pass
	elif weather == 3:
		pass
	elif weather == 4:
		pass
