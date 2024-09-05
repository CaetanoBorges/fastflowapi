<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Mesa.php");

$conexao = Funcoes::conexao();

$dados = $_GET;
$Mesa = new Mesa($conexao);

if($Mesa->desocuparMesa("002")){
    $return['payload'] = "";
    $return['ok'] = true;

    echo json_encode($return);
    return;
}

$return['payload'] = "Erro, algo inesperado aconteceu";
$return['ok'] = false;
echo json_encode($return);