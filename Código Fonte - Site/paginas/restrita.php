<!DOCTYPE html>
<html lang="pt-br">
<head>
    <?php
        session_start();
        if((!isset ($_SESSION['email']) == true) and (!isset ($_SESSION['nome']) == true))
        {
        unset($_SESSION['email']);
        unset($_SESSION['nome']);
        header('location:login.php');
        }
    $logado = $_SESSION['email'];
    ?>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://kit.fontawesome.com/a452fff056.js" crossorigin="anonymous"></script>
    <title>NeyGame</title>
</head>
<body>
    <header>
        <div class="center">
            <div class="logo"><a href="../index.php">NeyGame</a></div>
            <nav class="menu">
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="perfil.php">Perfil</a></li>
                    <li><a href="../index.php">Sair</a></li>
                </ul>
            </nav>
            <nav class="menu-mobile">
                <h2><i class="fa fa-bars"></i></h2>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="perfil.php">Perfil</a></li>
                    <li><a href="../index.php">Sair</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="home" class="main">
        <div class="center">
            <div class="clear"></div>
        </div>
    </section>

    <section id="sobre" class="sobre">
        <div class="center">
            <div class="imagem"><img src="../imagens/neygame.PNG" alt="NeyGame"></div>
            <div class="download">
                <h3>Baixe Aqui</h3>
                <a href="https://drive.google.com/file/d/1s0DlRYcu1Bpv3UuKPA6e7tEK0WCcCQG-/view?usp=sharing"><input type="button" value="64 Bits"></a>
                <a href="https://drive.google.com/file/d/1mCiNEogzYocJpkgIhji86j6hmG_PfBEi/view?usp=sharing"><input type="button" value="32 Bits"></a>
            </div>
            <div class="clear"></div>
        </div>
    </section>

    <div class="center" style="margin-top: 30px;">
        <div class="row col-md-6 col-md-offset-2 custyle">
        <table class="table table-striped custab">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Melhor Pontua????o</th>
            </tr>
            </thead>
                <?php
                    include("../dao/conexao.php");

                    header("Access-Control-Allow-Origin: *");
                    header("Access-Control-Allow-Headers: *");

                    $usuario = array();

                    $conexao   = mysqli_connect($hostname,$username,$password,$database);
                    if (mysqli_connect_errno()) {
                    echo "Failed to connect to MySQL: " . mysqli_connect_error();
                    exit();
                    }

                    $comando   = "SELECT id,nome,email,melhor_pontuacao FROM usuario ORDER BY melhor_pontuacao DESC";
                    $resultado = mysqli_query($conexao,$comando);

                    while ($dado = mysqli_fetch_assoc($resultado)){
                    ?>
                        <tr>
                            <td><?php echo $dado["id"];?></td>
                            <td><?php echo $dado["nome"];?></td>
                            <td><?php echo $dado["melhor_pontuacao"];?></td>
                        </tr>
                    <?php
                        }
                        mysqli_free_result($resultado);
                        mysqli_close($conexao);
                    ?>
            </table>
            </div>
            <div class="clear"></div>
    </div>

    <footer id="contato" class="contato">
        <div class="center">
            <div class="w100">
                <p>Direitos Reservados</p>
            </div>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script>
        $('nav.menu-mobile h2').click(function(){
            $('nav.menu-mobile ul').slideToggle();
        })
    </script>
</body>
</html>