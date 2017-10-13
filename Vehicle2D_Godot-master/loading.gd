extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var hitung=0

var posm

var playx
var jeniscar

var ready=false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	jeniscar=get_node("/root/auto").carjenis
	get_node("Timer").start()
	get_node("Timer 2").start()
	#playx=get_node("/root/auto").playsc
	posm=get_node("Sprite").get_pos()
	set_process(true)
	


func _on_Timer_timeout():
	hitung +=20
	
	get_node("TextureProgress").set_value(hitung)
	if ready:
		get_tree().change_scene_to(playx)
		

func _process(delta):
	posm.x +=1
	get_node("Sprite").set_pos(posm)
	

func _on_Timer_2_timeout():
	if jeniscar==1:
		playx=ResourceLoader.load("res://scenes/gameplaybk.tscn")
		ready=true
		get_node("Timer 2").stop()
		
	elif jeniscar==2:# bajaj
		playx=ResourceLoader.load("res://scenes/gameplay.tscn")
		ready=true
		get_node("Timer 2").stop()
