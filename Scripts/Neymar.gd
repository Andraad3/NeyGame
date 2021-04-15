extends KinematicBody2D

var velocidade = Vector2.ZERO
var velocidade_mov = 150
var gravidade = 1200
var pulo = -820
var nochao
onready var raycasts = $RayCasts

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

func _input(event):
	if event.is_action_pressed("jump") and nochao:
		velocidade.y = pulo / 2

func verifica_nochao():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true
	return false


