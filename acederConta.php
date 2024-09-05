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
$acederConta = $Mesa->acederConta($dados['mesa'],$dados['codigoconta'], $dados["restaurante"]);

if(gettype($acederConta) == "array"){
    $return['payload'] = $acederConta;
    $return['ok'] = true;

    echo json_encode($return);
    return;
}

$return['payload'] = "Erro, código errado";
$return['ok'] = false;
echo json_encode($return);