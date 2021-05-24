extends Node

var site = "http://neygame.freevar.com/jogo/php/"

#variaveis globais
var trofeus = 0
var juiz = 0
var chefes = 0
var vida = 3
var id = 0
var usuario = ""
var melhor_pontuacao = 0

var som_fase1 = true

func _ready():
	pontuacao()

#funcao para calcular pontuacao
func pontuacao():
	var melhor_pontuacao = (trofeus*10)+(juiz*50)+(chefes*100)
	
