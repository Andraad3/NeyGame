<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style.css">
    <script src="https://kit.fontawesome.com/a452fff056.js" crossorigin="anonymous"></script>
    <title>NeyGame</title>
</head>
<body>
    <?php
		if (isset($_GET["msg"]) && $_GET["msg"]==1){
			echo "<script>alert('Email ou senha invalidos')</script>";
		}
	?>
    <header>
        <div class="center">
            <div class="logo"><a href="../index.php">NeyGame</a></div>
            <nav class="menu">
                <ul>
                    <li><a href="../index.php">Home</a></li>
                    <li><a href="paginas/login.php">Login</a></li>
                </ul>
            </nav>
            <nav class="menu-mobile">
                <h2><i class="fa fa-bars"></i></h2>
                <ul>
                    <li><a href="../index.php">Home</a></li>
                    <li><a href="paginas/login.php">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="home" class="main">
        <div class="center">
            <div class="form-container">
                <form action="../dao/autenticar.php" method="post">
                    <div class="form-wrapper">
                        <label for="email">E-mail:</label><input type="text" name="email" id="email" required/><br>
                    </div>
                    <div class="form-wrapper">
                        <label for="senha">Senha:</label><input type="password" name="senha" id="senha" required/><br><br>
                    </div>
                    <div class="form-wrapper">
                        <input type="submit" value="Entrar">
                    </div>
                </form>
                <!-- <a href="esqueci.php">Esqueci a senha</a><br> -->
                <a href="cadastro.php">Não tenho cadastro</a><br>
                <a href="../index.php">Voltar para página inicial</a>
                <div class="clear"></div>
            </div>
        </div>
    </section>


    <footer id="contato" class="contato-bottom">
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