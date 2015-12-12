extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var pi = 3.14
var screen
var a = 100
var b = pi/2
var turt = Vector3(0, 0, 0)
func _ready():
	set_global_pos(Vector2(0, 0))
	screen = OS.get_window_size()
	turt.x = screen[0]/2
	turt. y = screen[1]/2
	turt.z = 0
	set_fixed_process(true)
	
func turtle(dist, deg):
	turt.x += dist*cos(deg)
	turt.y += dist*sin(deg)
	turt.z += deg
	return Vector2(turt.x, turt.y)

func _fixed_process(delta):
	_draw()
	b += pi/7
func _draw():
	print(turt)
	self.draw_line(turtle(0, 0), turtle(a, b), Color(.9, .9, .9, .9))
