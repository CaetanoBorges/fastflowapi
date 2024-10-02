<?php

class Mesa{

    private $conexao;
    function __construct($conexao){
        $this->conexao = $conexao;
    }

    public function adicionar($numero, $descricao, $detalhes){

    }

    public function restaurante($restaurante){
        $query = $this->conexao->prepare("SELECT * FROM usuario WHERE identificador = '$restaurante'");
        $query->execute();
        return $query->fetch(\PDO::FETCH_ASSOC);
    }
    public function ver($numero,$restaurante){
        $query = $this->conexao->prepare("SELECT * FROM mesa WHERE usuario = '$restaurante' AND numeromesa = '$numero'");
        $query->execute();
        return $query->fetch(\PDO::FETCH_ASSOC);
    }

    public function Entrar($noMesa, $restaurante){
        $query = $this->conexao->prepare("SELECT * FROM mesa WHERE usuario = '$restaurante' AND numeromesa = '$noMesa' AND ocupada = 0");
        $query->execute();
        $res=$query->fetchAll(\PDO::FETCH_ASSOC);
        //var_dump($res);
        if(count($res)<=0){
            return false;
        }
        return true;
    }
    public function acederConta($noMesa,$codigo,$restaurante){
        $query = $this->conexao->prepare("SELECT * FROM mesa WHERE usuario = '$restaurante' AND numeromesa = '$noMesa' AND codigo = '$codigo'");
        $query->execute();
        $mesa=$query->fetchAll(\PDO::FETCH_ASSOC);
        
        if(count($mesa) > 0){
            $query = $this->conexao->prepare("SELECT * FROM conta WHERE usuario = '$restaurante' AND mesa = '$noMesa' AND fechado = '0'");
            $query->execute();
            $conta=$query->fetch(\PDO::FETCH_ASSOC);
            
            $query = $this->conexao->prepare("SELECT * FROM mesaocupada WHERE usuario = '$restaurante' AND mesa = '$noMesa' AND desocupou = '0'");
            $query->execute();
            $mesaocupada=$query->fetch(\PDO::FETCH_ASSOC);

            return ["idconta"=>$conta["identificador"],"quando"=>$conta["quando"],"mesa"=>$noMesa, "descricao"=>$mesa[0]["descricao"], "nome"=>$mesaocupada["nome"]];

        }
        return false;
    }
    public function usarMesa($noMesa, $nome, $quando, $restaurante,$codigo){

        if($this->Entrar($noMesa, $restaurante)){
            
            $query = $this->conexao->prepare("UPDATE mesa SET ocupada = 1, codigo = '$codigo' WHERE usuario = '$restaurante' AND numeromesa = '$noMesa'");
            $query->execute();

            
            $query = $this->conexao->prepare("INSERT INTO mesaocupada (usuario, mesa, nome)  VALUES ('$restaurante','$noMesa','$nome')");
            $query->execute();

            $tempo = time();
            $query = $this->conexao->prepare("INSERT INTO conta (usuario, mesa, tempo, quando)  VALUES ('$restaurante','$noMesa','$tempo','$quando')");
            $query->execute();


            return true;

        }
        return false;
    }
    public function detalhesMesa($noMesa,$quando, $restaurante){

        $query = $this->conexao->prepare("SELECT * FROM mesa WHERE usuario = '$restaurante' AND numeromesa = '$noMesa'");
        $query->execute();
        $mesa=$query->fetch(\PDO::FETCH_ASSOC);
        
        $query = $this->conexao->prepare("SELECT * FROM conta WHERE usuario = '$restaurante' AND mesa = '$noMesa' AND quando = '$quando'");
        $query->execute();
        $conta=$query->fetch(\PDO::FETCH_ASSOC);

        return ["idconta"=>$conta["identificador"],"quando"=>$conta["quando"],"mesa"=>$noMesa, "descricao"=>$mesa["descricao"]];
        
    }
    
    public function desocuparMesa($noMesa, $restaurante){

        $query = $this->conexao->prepare("UPDATE mesa SET ocupada = 0 WHERE usuario = '$restaurante' AND numeromesa = '$noMesa'");
            $query->execute();

            
            $query = $this->conexao->prepare("UPDATE mesaocupada SET desocupou = 1 WHERE usuario = '$restaurante' AND mesa = '$noMesa'");
            $query->execute();

            
            $query = $this->conexao->prepare("UPDATE conta SET fechado = 1 WHERE usuario = '$restaurante' AND mesa = '$noMesa'");
            $query->execute();

            return true;
    }

    
    public function pedir( $itens, $total, $conta, $restaurante){
        $quando = date("d-m-Y h:i");
        $query = $this->conexao->prepare("INSERT INTO pedido (usuario, itens, total, quando, conta) VALUES ('$restaurante','$itens','$total','$quando','$conta')");
        $query->execute();
        return true;

    }
    public function verConta($conta, $restaurante){
        
        $query = $this->conexao->prepare("SELECT * FROM pedido WHERE usuario = '$restaurante' AND conta = '$conta'");
        $query->execute();
        $res = $query->fetchAll(\PDO::FETCH_ASSOC);

        rsort($res);

        foreach($res as $k => $r){
            $res[$k]["itens"] = json_decode($r['itens']);
        }

        return $res;
    }
     
    public function fazReclamacao($nome, $telefone, $email, $detalhes, $restaurante){
        $quando = date("d-m-Y h:i");
        $query = $this->conexao->prepare("INSERT INTO reclamacao (usuario, nome, telefone, email, detalhes, quando) VALUES ('$restaurante','$nome','$telefone','$email','$detalhes','$quando')");
        $query->execute();
        return true;

    }

    public function verMesas($usuario){

        $query = $this->conexao->prepare("SELECT * FROM mesa WHERE usuario = '$usuario'");
        $query->execute();
        $mesas=$query->fetchAll(\PDO::FETCH_ASSOC);        
        return $mesas;
    }
    
    public function slide($usuario){

        $query = $this->conexao->prepare("SELECT slide FROM usuario WHERE identificador = '$usuario'");
        $query->execute();
        $res=$query->fetch(\PDO::FETCH_ASSOC);        
        return $res["slide"];
    }
    
    public function pub($usuario){

        $query = $this->conexao->prepare("SELECT pub FROM usuario WHERE identificador = '$usuario'");
        $query->execute();
        $res=$query->fetch(\PDO::FETCH_ASSOC);        
        return $res["pub"];
    }
    public function logo($usuario){

        $query = $this->conexao->prepare("SELECT img FROM usuario WHERE identificador = '$usuario'");
        $query->execute();
        $res=$query->fetch(\PDO::FETCH_ASSOC);        
        return $res["img"];
    }
}