extends Node

#variaveis globais
var trofeus = 0
var juiz = 0
var chefes = 0
var vida = 3
var id = 0
var usuario = ""
var melhor_pontuacao = 0

func _ready():
	pontuacao()

#funcao para calcular pontuacao
func pontuacao():
	var melhor_pontuacao = (trofeus*10)+(juiz*50)+(chefes*100)
	
