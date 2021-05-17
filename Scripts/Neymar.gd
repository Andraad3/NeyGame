extends KinematicBody2D

var vida = 5 #vida durante o jogo
var velocidade = Vector2.ZERO #posiçao no jogo
var trofeus = 0 #'moedas'
var velocidade_mov = 150 #velocidade de movimento
var gravidade = 1200 #gravidade
var pulo = -820 #tamanho do pulo
var nochao #var para verificar se esta no chao
onready var raycasts = $RayCasts #variavel facilitadora para o RayCast

var knockback = 1 #direcao
var knockback_int = 300 #intensidade do knockback

func _ready():
	pass

func _physics_process(delta):
	velocidade.y += gravidade * delta #coloca gravidade no jogo
	movimento()
	velocidade = move_and_slide(velocidade)
	nochao = verifica_nochao()

func movimento(): #funcao de movimento
	var direcao_mov = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left")) #movimento do jogador
	velocidade.x = lerp(velocidade.x, velocidade_mov * direcao_mov, 0.2)
	
	if direcao_mov != 0:
		knockback = direcao_mov

func _input(event): #funcao de pulo
	if event.is_action_pressed("jump") and nochao:
		velocidade.y = pulo / 2

func verifica_nochao(): #verifica se esta no chão, colidindo com o mapa
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true
	return false
	
func knockback(): #funcao que calcula o knockback
	velocidade.x = -knockback * knockback_int
	velocidade = move_and_slide(velocidade)

func _on_Hurtbox_body_entered(body): #funcao que calcula o dano
	vida -= 1
	knockback() #após sofrer o dano, o jogador é jogado para o lado
	if vida < 1:
		Global.vida -= 1
		queue_free()
		get_tree().reload_current_scene()
