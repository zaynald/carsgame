
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	Globals.set("mobil",self)
	set_process_input(false)
	pass
	
func maju(speed = 10):
	get_node("rear1").set_angular_velocity(speed)
	#get_node("front").set_angular_velocity(speed)

func mundur(speed = -7):
	get_node("rear1").set_angular_velocity(speed)

func gas(speed = 10):
	get_node("front").set_angular_velocity(speed)

	





