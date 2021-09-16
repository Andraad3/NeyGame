extends Area2D

func _on_Area2D_body_entered(body):
	Global.vida -= 1
	get_tree().reload_current_scene()
