extends KinematicBody2D

export var vel = 64
export var vida = 5
var velocidade = Vector2.ZERO
var direcao_mov = -1
var gravidade = 1200

func _physics_process(delta):
	velocidade.x = vel * direcao_mov
	velocidade = move_and_slide(velocidade)
	velocidade.y = gravidade*delta
	
	if direcao_mov == 1:
		$Sprite.flip_h = true
	else:
		$Sprite.flip_h = false
		
	if $RayCast2D.is_colliding():
		$RayCast2D.scale.x *= -1
		direcao_mov *= -1


func _on_hitbox_body_entered(body): #após o chefe ser morto, aparece a cena de vitória
	vida -= 1
	if vida < 1:
		Global.chefes += 1
		queue_free()
		get_tree().change_scene("res://Cenas/ganhou.tscn")
