<?php

header("Access-Control-Allow-Origin: *");

include("Classes/Funcoes.php");

    $query = Funcoes::conexao()->prepare("INSERT INTO push (usuario, authtoken, p256dh, endpoint) VALUES (?, ?, ?, ?)");
    $query->bindValue(1,$_POST['restaurante']);
    $query->bindValue(2,$_POST['auth']);
    $query->bindValue(3,$_POST['pdh']);
    $query->bindValue(4,$_POST['endpoint']);
    $query->execute();

//var_dump($_POST);