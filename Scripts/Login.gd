extends Node2D

func _on_Button_pressed():
	var url_requisicao = "http://localhost/neygame/login.php?"
	var dados_envio = "email=" +$ColorRect/Line_Email.text + "&senha="+ $ColorRect/Line_Senha.text
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"]
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json =JSON.parse(body.get_string_from_utf8())
	if (json.result.size()>0):
		Global.id = json.result["id"]
		Global.usuario = json.result["usuario"]
		Global.melhor_pontuacao =  json.result["melhor_pontuacao"]
		get_tree().change_scene("res://Cenas/ranking.tscn")
	else:
		print("falha")
