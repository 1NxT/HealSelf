<?php
$btn_vef = isset($_SESSION['login']) ? $_SESSION['login'] : false;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/receitas.css">
    <title>Document</title>
</head>

<body>
    <script src="script\jquery.js" type="text/javascript" charset="utf-8"></script>
    <script src="script\btn_voltar.js"></script>

    <section class="topo">
        <div class="texto-topo">
            <h1>Receitas Veganas</h1>
        </div>
        <div>
            <form method="post">
                <input id="btn-topo" type="submit" acao="voltar-home" value="VOLTAR">
            </form>
        </div>

    </section>
    <!--topo-->

    <?php
    $receitas_light = MySql::conectar()->prepare("SELECT * FROM `tb_admin.receitas` WHERE id_categoria = ?");
    $receitas_light->execute(array(2));
    $receitas_light = $receitas_light->fetchAll();
    foreach ($receitas_light as $key => $value) {
    ?>


        <section class="local-receita">
            <table>
                <tr>
                    <td><img style="width: 90px; height: 90px;" src="uploads\<?php echo $value['imagem'] ?>">
                        <button class="btn_rcp" id="<?php echo $value['slug']; ?>"><?php echo $value['titulo']; ?></button>
                    </td>
                </tr>
            </table>
        </section>

        <?php

        $slug = $value['slug'];
        $imagem = $value['imagem'];
        echo "<script type='text/javascript'>;
        $(function() {
            $(`#$slug`).click(function() {
                $('#gambiarra-de-guilherme-'+`$slug`).fadeIn();
            });
            $('#gambiarra-btn-'+`$slug`).click(function(){
                 $('#gambiarra-de-guilherme-'+`$slug`).fadeOut();
            });
        });
    
        
        </script>";
        ?>
        <div class="gambiarra-guilherme" id="gambiarra-de-guilherme-<?php echo $value['slug']; ?>">
            <h1><?php echo $value['titulo']; ?></h1>
            <h3>Autor: <?php echo $value['autor']; ?></h3>
            <h5>Conteúdo: </h5>
            <p><?php echo $value['conteudo']; ?></p>
            <button class="gambiarra-guilherme-btn" id="gambiarra-btn-<?php echo $value['slug']; ?>">FECHAR!</button>
        </div>
    <?php } ?>
</body>

</html>