<?php

class Produto{
    private $conexao;
    function __construct($conexao){
        $this->conexao = $conexao;
    }

    public function adicionar($categoria, $detalhes, $nome, $preco){

    }

    public function ver($restaurante){
        $res = [];
        $query = $this->conexao->prepare("SELECT categoria FROM produto WHERE usuario = '$restaurante' GROUP BY categoria ORDER BY nome");
        $query->execute();
        $categoria=$query->fetchAll(\PDO::FETCH_ASSOC);

        foreach($categoria as $key => $value){
            $categ = $value["categoria"];
            $query = $this->conexao->prepare("SELECT * FROM produto WHERE usuario = '$restaurante' AND categoria = '$categ' ORDER BY nome");
            $query->execute();
            $produtos=$query->fetchAll(\PDO::FETCH_ASSOC);
            $res[$categ] = $produtos;
        }
        
        return $res;

    }

    
}