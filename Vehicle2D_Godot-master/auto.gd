extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


#var playsc = ResourceLoader.load("res://scenes/gameplay.tscn")
var levelF=1
var carjenis=1

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var f = File.new()
	if (f.open("user://highscore", File.READ) == OK):
		#max_points = 1
		levelF = f.get_16()


func game_over(levelNow):
	
	var f = File.new()
	f.open("user://highscore", File.WRITE)
	f.store_16(levelNow)
	
	
	
	
	
	

	


func playload():
	get_node("StreamPlayer").play(true)

	
	
func playloadend():
	get_node("Sprite").hide()
	get_node("AnimationPlayer").stop(true)