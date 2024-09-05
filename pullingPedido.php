<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Pedido.php");

$conexao = Funcoes::conexao();

$Pedido = new Pedido($conexao);

$conta = $_GET["conta"];
$restaurante = $_GET["restaurante"];

$return['payload'] = $Pedido->ver($conta, $restaurante);
$return['ok'] = true;

echo json_encode($return);