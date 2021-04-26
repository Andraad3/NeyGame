extends Node2D


func _ready():
	var nova_pontuacao = (Global.trofeus*10)+(Global.juiz*50)+(Global.chefes*100)
	$pontos.text = str(nova_pontuacao)
	
	if(int(Global.melhor_pontuacao) < nova_pontuacao):
		atualizar_pontos(nova_pontuacao)

func _on_Button_pressed():
	get_tree().change_scene("res://Cenas/ranking.tscn")

func atualizar_pontos(nova_pontuacao):
	var url_requisicao = "http://localhost/neygame/atualizar_pontos.php?"
	var dados_envio = "id=" + Global.id + "&nova_pontuacao="+ str(nova_pontuacao)
	var cabecalho   = ["Content-Type: application/x-www-form-urlencoded"]
	$HTTPRequest.request(url_requisicao, cabecalho, false,HTTPClient.METHOD_POST, dados_envio)


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	var json = JSON.parse(body.get_string_from_utf8())
	if (json.result["msg"]=="ok"):
		print("sucesso")
	else:
		print("falha")
