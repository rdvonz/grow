
extends Node2D

# member variables here, example:
# var a=2
var weather = 1
var currentMusic = get_node("Music1")
var musicTime = 0.0


func _ready():
	set_process(true)

func _input(event):
	if is_pressed("one"):
		weather = 1
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.2, get_node("Bleh").get_pos().y))
		print("HEA")
		musicTime = currentMusic.get_pos()
		currentMusic.stop()
		currentMusic = get_node("Music1")
		currentMusic.set_pos(musicTime)
		currentMusic.play()
	if is_pressed("two"):
		weather = 2
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.4, get_node("Bleh").get_pos().y))
		musicTime = currentMusic.get_pos()
		currentMusic.stop()
		currentMusic = get_node("Music2")
		currentMusic.set_pos(musicTime)
		currentMusic.play()
	if is_pressed("three"):
		weather = 3
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.6, get_node("Bleh").get_pos().y))
		musicTime = currentMusic.get_pos()
		currentMusic.stop()
		currentMusic = get_node("Music3")
		currentMusic.set_pos(musicTime)
		currentMusic.play()
	elif is_pressed("four"):
		weather = 4
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.8, get_node("Bleh").get_pos().y))
		musicTime = currentMusic.get_pos()
		currentMusic.stop()
		currentMusic = get_node("Music4")
		currentMusic.set_pos(musicTime)
		currentMusic.play()


func _process(delta):
	if Input.is_action_pressed("one"):
		weather = 1
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.2, get_node("Bleh").get_pos().y))
	elif Input.is_action_pressed("two"):
		weather = 2
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.4, get_node("Bleh").get_pos().y))
	elif Input.is_action_pressed("three"):
		weather = 3
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.6, get_node("Bleh").get_pos().y))
	elif Input.is_action_pressed("four"):
		weather = 4
		get_node("Bleh").set_pos(Vector2(get_viewport_rect().size.width*0.8, get_node("Bleh").get_pos().y))
	if weather == 1:
		pass
	elif weather == 2:
		pass
	elif weather == 3:
		pass
	elif weather == 4:
		pass
