<?php
    header("Access-Control-Allow-Origin: *");

    include("conexao.php");

    $id = $_POST["id"];
    $nova_pontuacao = $_POST["nova_pontuacao"];

    $resposta = array();
    $conexao   = mysqli_connect($hostname,$username,$password,$database);
    if (mysqli_connect_errno()) {
    //echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
    }

    $comando   = "update usuario set melhor_pontuacao=$nova_pontuacao where id=$id";
    mysqli_query($conexao,$comando);
    if (mysqli_affected_rows($conexao)>0){
        $resposta["msg"] = "ok";
    }else{
        $resposta["msg"] = "falha";
    }

    echo json_encode($resposta);
    mysqli_close($conexao);
?>