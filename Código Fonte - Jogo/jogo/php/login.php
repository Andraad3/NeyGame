<?php

    header("Access-Control-Allow-Origin: *");

    include("conexao.php");

    $email = $_POST["email"];
    $senha = md5($_POST["senha"]);


    $usuario = array();

    $conexao = mysqli_connect($hostname,$username,$password,$database);
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
      }

    
    $comando   = "select * from usuario where email='$email' and senha='$senha'";

    $resultado = mysqli_query($conexao,$comando);
    if ($dado = mysqli_fetch_assoc($resultado)){
	    $usuario["id"]    = $dado["id"];
	    $usuario["usuario"]  = $dado["nome"];
	    $usuario["email"] = $dado["email"];
	    $usuario["melhor_pontuacao"] = $dado["melhor_pontuacao"];
	echo json_encode($usuario);
    }else{
	    echo json_encode($usuario);
    }
    
    mysqli_free_result($resultado);
    mysqli_close($conexao);
?>