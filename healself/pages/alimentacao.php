<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href=".\css\alimentacao.css">
    <title>Document</title>
</head>

<body>
    <section class="topo">
        <div class="texto-topo">
            <h1>ALIMENTAÇÃO</h1>
        </div>
        <div>
            <form method="post">
                <input id="btn-topo" type="submit" acao="voltar-home" value="HOME">
            </form>
        </div>
    </section>
    <!--topo-->
    
    <section class="corpo">
        <div>
            <table class="table_1">
                <tr>
                    <!--imagem-->
                    <td><a href="receitas_light">
                            <img style="border-radius: 50%; height: 60px; width: 60px;" src="./imagens/R_LIGHT.png" alt="R_LIGHT">
                        </a>
                    <!--titulo-->
                        <a href="receitas_light">
                            <h1>Receitas Light</h1>
                        </a>
                    </td>
                    <!--imagem-->
                    <td><a href="receitas_vegana">
                            <img style="border-radius: 50%; height: 60px; width: 60px;" src="./imagens/R_VEGANA.png" alt="R_VEGANA">
                        </a>
                    <!--titulo-->
                        <a href="receitas_vegana">
                            <h1>Receitas Veganas</h1>
                        </a>
                    </td>
                </tr>
            </table><br>
            <table class="table_2">
                <tr>
                    <!--imagem-->
                    <td> <a href="dicas_nutricionais">
                            <img style="border-radius: 50%; height: 60px; width: 60px;" src="./imagens/R_NUTRI.png" alt="R_NUTRI">
                        </a>
                    <!--titulo--> 
                        <a href="dicas_nutricionais">
                            <h1>Dicas nutricionais</h1>
                        </a>
                    </td>
                    <!--imagem-->
                    <td><a href="dietas_diversas">
                            <img style="border-radius: 50%; height: 60px; width: 60px;" src="./imagens/R_DIVERSAS.png" alt="R_DIVERSAS">
                        </a>
                    <!--titulo-->
                        <a href="dietas_diversas">
                            <h1>Dietas diversas</h1>
                        </a>
                    </td>
                </tr>
            </table>
            <div class="mini-botao">
            </div>
        </div>
    </section>


    <section>
        <script src="script\jquery.js" type="text/javascript" charset="utf-8"></script>
        <script src="script\btn_voltar_1.js"></script>
</body>

</html>