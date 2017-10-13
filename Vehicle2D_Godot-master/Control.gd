extends CanvasLayer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass



func _on_TextureButton_pressed():
	get_tree().reload_current_scene()


func _on_TextureButton_2_pressed():
	Globals.get("mobil").gas()


func _on_TextureButton_3_pressed():
	Globals.get("mobil").maju()


func _on_TextureButton_4_pressed():
	Globals.get("mobil").mundur()
