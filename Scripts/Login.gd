extends Node2D

func _on_Button_pressed():
	var url_requisicao = "http://localhost/neygame/login.php"
	var dados_envio = "email=" +$ColorRect/Line_Email.text + "senha="+ $ColorRect/Line_Senha.text
	var cabecalho   = ["Content-Type: application/json"]
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	get_tree().change_scene("res://Cenas/ranking.tscn")
	print("chegou aqui")
	var json =JSON.parse(body.get_string_from_utf8())

	if (json.result.size()>0):
		Global.id = json.result["id"]
		Global.nome = json.result["nome"]
		Global.pontos =  json.result["pontos"]

	else:
		print("falha")
