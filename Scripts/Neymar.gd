extends KinematicBody2D

var vida = 10
var velocidade = Vector2.ZERO
var trofeus = 0
var velocidade_mov = 150
var gravidade = 1200
var pulo = -820
var nochao
onready var raycasts = $RayCasts

var knockback = 1
var knockback_int = 300

func _ready():
	pass

func _physics_process(delta):
	velocidade.y += gravidade * delta
	
	movimento()
	velocidade = move_and_slide(velocidade)
	nochao = verifica_nochao()

func movimento():
	var direcao_mov = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocidade.x = lerp(velocidade.x, velocidade_mov * direcao_mov, 0.2)
	
	if direcao_mov != 0:
		knockback = direcao_mov

func _input(event):
	if event.is_action_pressed("jump") and nochao:
		velocidade.y = pulo / 2

func verifica_nochao():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true
	return false
	
func knockback():
	velocidade.x = -knockback * knockback_int
	velocidade = move_and_slide(velocidade)

func _on_Hurtbox_body_entered(body):
	vida -= 1
	knockback()
	if vida < 1:
		Global.vida -= 1
		queue_free()
		get_tree().reload_current_scene()
	print(vida)
