extends KinematicBody2D

var velocidade = Vector2.ZERO
var velocidade_mov = 200
var gravidade = 1200
var pulo = -360

func _ready():
	pass

func _physics_process(delta):
	velocidade.y += gravidade * delta
	var direcao_mov = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	
	if Input.is_action_pressed("jump"):
		velocidade.y = pulo
	velocidade.x = velocidade_mov * direcao_mov
	
	move_and_slide(velocidade)
