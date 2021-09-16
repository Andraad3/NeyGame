<?php
    header("Access-Control-Allow-Origin: *");

    include("conexao.php");

    $usuario = array();

    $conexao   = mysqli_connect($hostname,$username,$password,$database);
    if (mysqli_connect_errno()) {
        echo "Failed to connect to MySQL: " . mysqli_connect_error();
        exit();
    }

    $comando = "SELECT id, nome, email, melhor_pontuacao FROM usuario ORDER BY melhor_pontuacao DESC";
    $resultado = mysqli_query($conexao, $comando);

    $resposta = [];

    while ($dado = mysqli_fetch_assoc($resultado)){
        $usuario["id"]    = $dado["id"];
        $usuario["usuario"]  = $dado["nome"];
        $usuario["email"] = $dado["email"];
        $usuario["melhor_pontuacao"] = $dado["melhor_pontuacao"];	
        $resposta[] = $usuario;
    }
    echo json_encode($resposta);
    
    mysqli_free_result($resultado);
    mysqli_close($conexao);
?>