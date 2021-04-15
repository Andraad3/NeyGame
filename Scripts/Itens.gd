extends Area2D

var trofeus = 0

func _on_Itens_body_entered(body):
	queue_free()
