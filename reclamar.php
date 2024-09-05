<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Produto.php");

$conexao = Funcoes::conexao();

$Produto = new Produto($conexao);

$return['payload'] = $Produto->ver();
$return['ok'] = true;

echo json_encode($return);