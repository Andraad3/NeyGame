<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/a452fff056.js" crossorigin="anonymous"></script>
    <title>NeyGame</title>
</head>
<body>
    <header>
        <div class="center">
            <div class="logo"><a href="index.php">NeyGame</a></div>
            <nav class="menu">
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#sobre">Sobre</a></li>
                    <li><a href="paginas/login.php">Login</a></li>
                </ul>
            </nav>
            <nav class="menu-mobile">
                <h2><i class="fa fa-bars"></i></h2>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#sobre">Sobre</a></li>
                    <li><a href="paginas/login.php">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="home" class="main">
        <div class="center">
            <div class="apresentacao">
                <h1>NeyGame</h1>
                <p>O jogo do Menino Ney</p>
            </div>
            <div class="diferenciais">
                <div class="diferencial">
                    <i class="fas fa-gamepad"></i>
                    <h2>GODOT</h2>
                    <p>Jogo desenvolvido em Godot.</p>
                </div>
                <div class="diferencial">
                    <i class="fas fa-male"></i>
                    <h2>Neymar</h2>
                    <p>Neste jogo o menino Ney vai em busca da bola de ouro.</p>
                </div>
                <div class="diferencial">
                    <i class="fas fa-robot"></i>
                    <h2>Inimigos</h2>
                    <p>O maior inimigo do menino Ney, o juiz, que não marca falta quando ele cai.</p>
                </div>
                <div class="diferencial">
                    <i class="fas fa-skull-crossbones"></i>
                    <h2>Chefão</h2>
                    <p>A cada fase, o menino, agora adulto Ney, luta contra adversários q teve em sua carreira</p>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>

    <section id="sobre" class="sobre">
        <div class="center">
            <div class="imagem"><img src="imagens/neygame.PNG"></div>
            <div class="imagem" style="padding-left: 2px;"><img src="imagens/img2.PNG"></div>
            <div class="imagem" style="padding-left: 2px;"><img src="imagens/img3.PNG"></div>
            <div class="imagem" style="padding-left: 2px;"><img src="imagens/img4.PNG"></div>
        </div>
    </section>

    <section id="sobre" class="sobre">
        <div class="center">
            <div class="texto-sobre">
                <h1>Sobre nós</h1>
                <p>Somos um grupo de Estudantes da UNINOVE e desenvolvemos um jogo para o projeto do Semestre onde o personagem principal é o Neymar.</p>
            </div>
            <div class="texto-sobre">
                <h1>Integrantes</h1>
                <ul>
                    <li>Alexandre Faria</li>
                    <li>Gabriel Andrade</li>
                    <li>Guilherme Diogo</li>
                    <li>João Andrade</li>
                </ul>
                
            </div>
        </div>
    </section>
        

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