extends Node


func _ready(): #reseta o level
	Global.trofeus = 0
	Global.juiz = 0
	Global.chefes = 0
	
	if Global.vida < 1: #Aqui a cena reinicia após o número de tentativas ser batido
		get_tree().change_scene("res://Cenas/perdeu.tscn")
		Global.vida = 3
