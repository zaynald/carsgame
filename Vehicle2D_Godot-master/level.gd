extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var lev=1

var playx

var levelt2=load("res://imgs/level2m.png")
var levelt3=load("res://imgs/level3m.png")
var levelt4=load("res://imgs/level4m.png")
var levelt5=load("res://imgs/level5m.png")
var levelt6=load("res://imgs/level6m.png")
var levelt7=load("res://imgs/level7m.png")
var levelt8=load("res://imgs/level8m.png")



func _ready():
	#load resource
	#playx=get_node("/root/auto").playsc
	
	#get level from file
	var lev=get_node("/root/auto").levelF
	
	
	#set file manual
	#get_node("/root/auto").game_over(1)
	
	if lev>=2: #set level current
		for i in range(2,lev+1):
			levelnow(i)
	
func levelnow(l):
	
	if l==2:
		get_node("levelist/Level2").set_disabled(false)
		get_node("levelist/Level2").set_normal_texture(levelt2)
	if l==3:
		get_node("levelist/Level3").set_disabled(false)
		get_node("levelist/Level3").set_normal_texture(levelt3)
	if l==4:
		get_node("levelist/Level4").set_disabled(false)
		get_node("levelist/Level4").set_normal_texture(levelt4)
	if l==5:
		get_node("levelist/Level5").set_disabled(false)
		get_node("levelist/Level5").set_normal_texture(levelt5)
	if l==6:
		get_node("levelist/Level6").set_disabled(false)
		get_node("levelist/Level6").set_normal_texture(levelt6)
	if l==7:
		get_node("levelist/Level7").set_disabled(false)
		get_node("levelist/Level7").set_normal_texture(levelt7)
	if l==8:
		get_node("levelist/Level8").set_disabled(false)
		get_node("levelist/Level8").set_normal_texture(levelt8)

func _on_Level4_pressed():
	get_tree().quit()# tes


func _on_Level1_pressed():
	get_tree().change_scene("res://loading.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://menu.tscn")
