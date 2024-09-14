<!-- Agregado -->
<?php
require_once 'config.php';
require_once 'conexion.php';
class CajaModel{
    private $pdo, $con;
    public function __construct() {
        $this->con = new Conexion();
        $this->pdo = $this->con->conectar();
    }

    
    public function AbrirCaja($codigo_caja, $idusuario, $fechaAp, $tipo_movimiento, $valor, $Estado ){
        $consult = $this->pdo->prepare("INSERT INTO caja (codigo_caja, idusuario, fechahora, tipo_movimiento, valor, estado) VALUES (?,?,?,?,?,?)");
        return $consult->execute([$codigo_caja, $idusuario, $fechaAp, $tipo_movimiento, $valor, $Estado]);
    }
    public function Agregarbillete($descripcion, $cant, $codcaja){
        $consult = $this->pdo->prepare("INSERT INTO billetesmonedas (descripcion, cantidad, codcaja) VALUES (?,?,?)");
        return $consult->execute([$descripcion, $cant, $codcaja]);
    }

    public function CerrarCaja($codigo_caja, $idusuario, $fechaAp, $tipo_movimiento, $valor, $Estado ){
        $consult = $this->pdo->prepare("INSERT INTO caja (codigo_caja, idusuario, fechahora, tipo_movimiento, valor, estado) VALUES (?,?,?,?,?,?)");
        return $consult->execute([$codigo_caja, $idusuario, $fechaAp, $tipo_movimiento, $valor, $Estado]);
    }
}

?>
<!-- Agregado -->
