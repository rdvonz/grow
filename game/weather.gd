
extends Node2D

# member variables here, example:
# var a=2
var weather = 1

func _ready():
	set_process(true)



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
