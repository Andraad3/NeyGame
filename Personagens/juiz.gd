extends KinematicBody2D

export var vel = 64
export var vida = 1
var velocidade = Vector2.ZERO
var direcao_mov = -1

func _physics_process(delta):
	velocidade.x = vel * direcao_mov
	velocidade = move_and_slide(velocidade)
	
	if direcao_mov == 1:
		$Sprite.flip_h = true
	else:
		$Sprite.flip_h = false
		
	if $RayCast2D.is_colliding():
		$RayCast2D.scale.x *= -1
		direcao_mov *= -1
