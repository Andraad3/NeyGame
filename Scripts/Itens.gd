extends Area2D

var trofeus = 1

func _on_Itens_body_entered(body):
	Global.trofeus += trofeus
	queue_free()
	print(Global.trofeus)
