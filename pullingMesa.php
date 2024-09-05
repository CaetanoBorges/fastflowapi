<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Mesa.php");

$conexao = Funcoes::conexao();

$dados = $_GET;
$Mesa = new Mesa($conexao);


$return['payload'] = $Mesa->ver($dados['mesa'], $dados['restaurante']);
$return['ok'] = true;
echo json_encode($return);