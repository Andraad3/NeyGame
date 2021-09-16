extends Area2D

func _on_buraco_body_entered(body): #ao entrar em contato com o buraco, o jogo reinicia
	Global.vida -= 1
	get_tree().reload_current_scene()
