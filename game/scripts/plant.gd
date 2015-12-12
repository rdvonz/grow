extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
var pi = 3.14
var screen
var turt = Vector3(0, 0, 0)
var set = []

func _ready():
	set_global_pos(Vector2(0, 0))
	screen = OS.get_window_size()
	turt.x = screen[0]/2
	turt. y = screen[1]/2
	turt.z = 0
	set.append(turtle(0, 0))
	for i in range(0, 200):
		set.append(turtle(pow(-1, i)*i*50, pi/64))
		print(set[i])
	
	set_fixed_process(true)
	

	
func turtle(dist, deg):
	turt.z += deg 
	turt.x += dist*cos(turt.z)
	turt.y += dist*sin(turt.z)

	return Vector2(turt.x, turt.y)

func _fixed_process(delta):
	_draw()

func _draw():
	for i in range(0, set.size() -1):
		self.draw_line(set[i], set[i+1], Color(.8, .5, .2, 1))
	self.update()
