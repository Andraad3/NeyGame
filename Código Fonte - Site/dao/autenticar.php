<?php

include("conexao.php");

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: *");

$email = $_POST["email"];
$senha = md5($_POST["senha"]);

$conexao = mysqli_connect($hostname,$username,$password,$database);
$sql = "select * from usuario where email='{$email}' and senha='{$senha}'";
$resultado = mysqli_query($conexao,$sql);
if ($linha = mysqli_fetch_assoc($resultado)){
	session_start();
	$_SESSION["id"] = $linha["id"];
	$_SESSION["nome"] = $linha["nome"];
	$_SESSION["email"] = $linha["email"];
	$_SESSION["melhor_pontuacao"] = $linha["melhor_pontuacao"];
	header("location: ../paginas/restrita.php");
}

mysqli_free_result($resultado);
mysqli_close($conexao);
?>