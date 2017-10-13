extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var nama
var isplay=false
var player2

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	stopeventm(true)
	get_node("AnimationPlayer").play("bagin")
	player2=get_node("AnimationPlayer 2")
	
	
func stopeventm(n):
	get_node("TextureButton").set_ignore_mouse(n)
	get_node("TextureButton1").set_ignore_mouse(n)
	get_node("TextureButton2").set_ignore_mouse(n)
	get_node("TextureButton3").set_ignore_mouse(n)


func _on_TextureButton2_pressed():
	get_tree().quit()


func _on_TextureButton_pressed():
	#get_node("AnimationPlayer 3").play("loading")
	#get_tree().change_scene("res://loading.tscn")
	#get_tree().change_scene("res://scenes/gameplay.tscn") #awal
	get_tree().change_scene("res://level.tscn")
	


func _on_TextureButton3_mouse_enter():
	get_node("AnimationPlayer 2").play("cara")
	get_node("AnimationPlayer").play("setover")
	


func _on_TextureButton3_mouse_exit():
	get_node("AnimationPlayer").play_backwards("setover",-1)
	get_node("AnimationPlayer 2").play_backwards("cara",-1)

func _on_TextureButton_mouse_enter():
	get_node("AnimationPlayer").play("playover")
	

func _on_TextureButton_mouse_exit():
	get_node("AnimationPlayer").play_backwards("playover",-1)
	

func _on_TextureButton2_mouse_enter():

	get_node("AnimationPlayer").play("exitover")


func _on_TextureButton2_mouse_exit():
	get_node("AnimationPlayer").play_backwards("exitover",-1)


func _on_menu_exit_tree():
	pass
	#get_node("/root/auto").playload()


func _on_AnimationPlayer_finished():
	get_node("AnimationPlayer").set_speed(5)
	stopeventm(false)


func _on_AnimationPlayer_2_finished():
	pass


func _on_TextureButton1_pressed():
	get_tree().change_scene("res://cars.tscn")
