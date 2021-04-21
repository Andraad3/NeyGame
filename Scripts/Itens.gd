extends Area2D

var trofeus = 1

func _on_Itens_body_entered(body): #após coleta de trofeu, ele some
	Global.trofeus += trofeus
	queue_free()
	print(Global.trofeus)
