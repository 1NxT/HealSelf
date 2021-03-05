<?php
include('config.php');
$btn_vef = isset($_SESSION['login']) ? $_SESSION['login'] : false;

?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HealSelf!</title>
	<link rel="stylesheet" href="css/main.css">
</head>

<body>
	<?php
	$url = isset($_GET['url']) ? $_GET['url'] : 'main';
	if ($url == 'login') {
		include('pages\login.php');
	} elseif ($url == 'adicionar') {
		include('pages\adicionar.php');
	} elseif ($url == 'perfil') {
		include('pages\perfil.php');
	} elseif($url == 'perfil_postagens'){
		include('pages\perfil_postagens.php');
	}elseif (file_exists('pages/' . $url . '.php')) {
	?>
		<section class="center">
			<header>
				<div class='logotipo'>
					<img src="./imagens/hsmini.png">
				</div>
				<div class="clear"></div>
				<div class="right">
					<?php
					if ($btn_vef == false) {
					?>
						<button id="btn-login-main" class="login">LOGIN</button>
					<?php
					} else {
					?>
						<button id="btn-perfil-main" class="login">PERFIL</button>
					<?php
					}
					?>
				</div>
				<div class="clear"></div>
				<div class='espaco'></div>
			</header><!-- /header -->
		</section>
		<!--center-->
	<?php
		include('pages/' . $url . '.php');
	} else {
		include('pages/404.php');
	}
	?>
	<!--botão de adicioar-->
	<?php if ($btn_vef == true and file_exists('pages/' . $url . '.php') == true){ ?>
		<button style="background: green; border-radius: 50%; width: 90px; height: 90px; right: 25px; position: fixed; bottom: 25px; opacity: 0.8;" id="btn-adicionar" class="btn-adicionar-classe">Postar!</button>
	<?php }?>
	</section>
	<script src="script\jquery.js" type="text/javascript" charset="utf-8"></script>
	<script src="script\constants.js" type="text/javascript" charset="utf-8"></script>
	<script src="script\index_buttons.js" type="text/javascript" charset="utf-8"></script>
	<script src="script\adicionar.js" type="text/javascript" charset="utf-8"></script>
</body>

</html>