extends Node2D

func _ready():
	pass
	$ColorRect/usuario.text = Global.usuario
	atualizar_ranking()

func atualizar_ranking():
	var url_requisicao = "http://localhost/neygame/ranking.php?"
	var dados_envio = "";
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"]
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())

	for i in range(json.result.size()):
		var posicao = i+1
		var id_usuario = str(json.result[i]["id"])
		var usuario = str(json.result[i]["usuario"])
		var pontos  = str(json.result[i]["melhor_pontuacao"])

		$ItemList.add_item(str("%03s" % posicao) + str("%25s" % usuario) + str("%25s" % pontos))
		if (Global.id != id_usuario):
			$ItemList.set_item_custom_fg_color(i, Color( 1, 1, 1, 1 ))
		else:
			$ItemList.set_item_custom_fg_color(i, Color( 1, 0, 0, 1 ))


func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/fases.tscn")


