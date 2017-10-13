extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var jeniscar

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	jeniscar=get_node("/root/auto").carjenis
	if jeniscar==1:
		get_node("AnimationPlayer 2").play("car1")
		get_node("pilih/TextureButton").set_block_signals(true)
		get_node("pilih/TextureButton1").set_block_signals(false)
	elif jeniscar==2:
		get_node("AnimationPlayer 2").play("car2")
		get_node("pilih/TextureButton").set_block_signals(false)
		get_node("pilih/TextureButton1").set_block_signals(true)
	
	get_node("AnimationPlayer").set_autoplay("selectcar")


func _on_TextureButton_2_pressed():
	get_tree().change_scene("res://menu.tscn")


func _on_TextureButton_pressed():
	get_node("AnimationPlayer 2").play_backwards("car2")
	get_node("AnimationPlayer 2").queue("car1")
	get_node("/root/auto").carjenis=1
	get_node("pilih/TextureButton").set_block_signals(true)
	get_node("pilih/TextureButton1").set_block_signals(false)


func _on_TextureButton1_pressed():
	get_node("AnimationPlayer 2").play_backwards("car1")
	get_node("AnimationPlayer 2").queue("car2")
	get_node("/root/auto").carjenis=2
	get_node("pilih/TextureButton").set_block_signals(false)
	get_node("pilih/TextureButton1").set_block_signals(true)
