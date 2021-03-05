<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login!</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div class="box-login">
        <?php
        if (isset($_POST['acao'])) {
            Login::logar($_POST['user'], $_POST['password']);
        }
        if (isset($_POST['acao-cadastro'])) {
            $user = $_POST['user-cadastro'];
            $email = $_POST['email-cadastro'];
            $password = $_POST['password-cadastro'];

            Cadastrar::cadastro($user, $email, $password);
        }
        ?>
        <form method="post" accept-charset="utf-8">
            <div class="imagem-logo">
                <img src="./imagens/healself_logo.png">
            </div>
            <input type="text" name="user" placeholder="Usuário..." required>
            <input type="password" name="password" placeholder="Senha..." required>
            <input type="submit" name="acao" value="ENVIAR">
        </form>
        <div>
            <h2>Não é cadastrado? <a id="btn-cadastro" style="color: rgb(0, 255, 102);" class="cadastro-btn-text">Cadastre-se!</a></h2>
        </div>
    </div>
    <div class="box-cadastro">
        <form method="post" accept-charset="utf-8">
            <div class="imagem-logo">
                <img src="./imagens/healself_logo.png">
            </div>
            <input type="text" name="user-cadastro" placeholder="Usuário..." required>
            <input type="email" name="email-cadastro" placeholder="Email..." required>
            <input type="password" name="password-cadastro" placeholder="Senha..." required>
            <input type="submit" name="acao-cadastro" value="ENVIAR">
            <div>
                <h2>Já é cadastrado? <a id="btn-login" style="color: rgb(0, 255, 102);" class="cadastro-btn-text">Faça login!</a></h2>
            </div>
        </form>
    </div>
    <script src="script/jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="script\constants.js" type="text/javascript" charset="utf-8"></script>
    <script src="script/login_animation.js" type="text/javascript" charset="utf-8"></script>
</body>

</html>