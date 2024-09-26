<?php
header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");
include("Classes/Mesa.php");

$conexao = Funcoes::conexao();

$Mesa = new Mesa($conexao);
$dados = $_GET;
$quando = date("d-m-Y h:i");

$pub = $Mesa->pub($dados["usuario"]);
$slide = $Mesa->slide($dados["usuario"]);



$return['slide'] = ($slide);
$return['pub'] = ($pub);
$return['ok'] = true;
echo json_encode($return);