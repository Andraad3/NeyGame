extends Node2D

func _ready():
	$AudioStreamPlayer.play(0.1)

func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/ranking.tscn")
