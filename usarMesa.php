<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Mesa.php");

$conexao = Funcoes::conexao();

$Mesa = new Mesa($conexao);

$string = Funcoes::generateRandomString(3);
$codigo = $string."-".Funcoes::seisDigitos();

$dados = $_GET;
$quando = date("d-m-Y h:i");
if($Mesa->usarMesa($dados['mesa'],$dados['nome'],$quando, $dados["restaurante"],$codigo)){
    $return['payload'] = $Mesa->detalhesMesa($dados['mesa'],$quando, $dados["restaurante"]);
    $return['ok'] = true;

    echo json_encode($return);
    return;
}

$return['payload'] = "Mesa indisponivel";
$return['ok'] = false;
echo json_encode($return);