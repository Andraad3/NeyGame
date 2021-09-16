extends Node2D

func _ready():
	pass

func _on_Button_pressed():
	Global.som_fase = $CheckBox.pressed
	get_tree().change_scene("res://Cenas/Fases.tscn")
