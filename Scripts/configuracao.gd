extends Node2D

func _ready():
	pass

func _on_CheckBox_pressed():
	Global.som_fase1 = true

func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/Fases.tscn")
