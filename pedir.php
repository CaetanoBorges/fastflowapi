<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Mesa.php");

$dados = $_POST;

$conexao = Funcoes::conexao();

$Mesa = new Mesa($conexao);

if($Mesa->pedir($dados["itens"],$dados["total"],$dados["conta"],$dados["restaurante"])){
    $return['payload'] = "";
    $return['ok'] = true;
    echo json_encode($return);
    return;
}

$return['payload'] = '';
$return['ok'] = false;

echo json_encode($return);