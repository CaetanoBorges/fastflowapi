<?php

class Pedido{

    private $conexao;
    function __construct($conexao){
        $this->conexao = $conexao;
    }

    public function adicionar($idMesa, $itens, $desconto){

    }

    public function alterarEstado($identificador){

    }

    public function ver($conta){
        
        $query = $this->conexao->prepare("SELECT * FROM pedido WHERE conta = '$conta'");
        $query->execute();
        $pedido=$query->fetchAll(\PDO::FETCH_ASSOC);
        
        
        return ["pedido"=>$pedido];

    }

    
}