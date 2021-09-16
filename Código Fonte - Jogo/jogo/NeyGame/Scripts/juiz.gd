extends KinematicBody2D

export var vel = 64
export var vida = 2
var velocidade = Vector2.ZERO
var direcao_mov = -1
var gravidade = 1200

func _physics_process(delta):
	velocidade.x = vel * direcao_mov
	velocidade = move_and_slide(velocidade)
	velocidade.y = gravidade*delta
	
	if direcao_mov == 1: #após bater na parede, ele muda a direcao
		$Sprite.flip_h = true
	else:
		$Sprite.flip_h = false
		
	if $RayCast2D.is_colliding():
		$RayCast2D.scale.x *= -1
		direcao_mov *= -1


func _on_hitbox_body_entered(body):
	vida -= 1
	print(vida)
	body.velocidade.y -= 300
	if vida < 1:
		Global.juiz += 1
		queue_free()
