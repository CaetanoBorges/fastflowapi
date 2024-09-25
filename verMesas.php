<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Mesa.php");

$conexao = Funcoes::conexao();

$Mesa = new Mesa($conexao);
$dados = $_GET;
$quando = date("d-m-Y h:i");

$mesas = $Mesa->verMesas($dados["usuario"]);
$restaurante = $Mesa->restaurante($dados["usuario"]);



$return['payload'] = ($mesas);
$return['restaurante'] = ($restaurante);
$return['ok'] = true;
echo json_encode($return);