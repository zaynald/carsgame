
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process_input(true)
	
	
func _input(event):
	if event.is_action("ui_right"):
		get_node("Node2D").maju()
	if event.is_action("ui_left"):
		get_node("Node2D").mundur()
	if event.is_action("ui_up"):
		get_node("Node2D").gas()
	if event.is_action("ui_cancel"):
		get_tree().change_scene("res://menu.tscn")
