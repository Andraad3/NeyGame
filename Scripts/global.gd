extends Node

#variaveis globais
var trofeus = 0
var juiz = 0
var chefes = 0
var vida = 3
var id
var nome
var pontos

func _ready():
	pontuacao()

#funcao para calcular pontuacao
func pontuacao():
	var pontos = (trofeus*10)+(juiz*50)+(chefes*100)
	
