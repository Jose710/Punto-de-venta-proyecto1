<?php
require_once '../config.php';
require_once 'conexion.php';
class ClientesModel{
    private $pdo, $con;
    public function __construct() {
        $this->con = new Conexion();
        $this->pdo = $this->con->conectar();
    }

    public function getClientes()
    {
        $consult = $this->pdo->prepare("SELECT * FROM cliente WHERE status = 1");
        $consult->execute();
        return $consult->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getCliente($id)
    {
        $consult = $this->pdo->prepare("SELECT * FROM cliente WHERE idcliente = ?");
        $consult->execute([$id]);
        return $consult->fetch(PDO::FETCH_ASSOC);
    }

    public function comprobarTelefono($telefono)
    {
        $consult = $this->pdo->prepare("SELECT * FROM cliente WHERE telefono = ?");
        $consult->execute([$telefono]);
        return $consult->fetch(PDO::FETCH_ASSOC);
    }

    public function saveCliente($nombre, $direccion, $correo, $sexo, $nit, $cui, $segurom, $poliza, $telefono)
    {
        $consult = $this->pdo->prepare("INSERT INTO cliente (nombre, direccion, correo, sexo, nit, cui, sgm, npoliza, telefono) VALUES (?,?,?,?,?,?,?,?,?)");
        return $consult->execute([$nombre, $direccion, $correo, $sexo, $nit, $cui, $segurom, $poliza, $telefono]);
    }

    public function deleteCliente($id)
    {
        $consult = $this->pdo->prepare("DELETE FROM cliente WHERE idcliente = ?");
        return $consult->execute([$id]);
    }

    public function updateCliente($nombre, $direccion, $correo, $sexo, $nit, $cui, $segurom, $poliza, $telefono, $id)
    {
        $consult = $this->pdo->prepare("UPDATE cliente SET nombre=?, direccion=?, correo=?, sexo=?, nit=?, cui=?, sgm=?, npoliza=?, telefono=? WHERE idcliente=?");
        return $consult->execute([$nombre, $direccion, $correo, $sexo, $nit, $cui, $segurom, $poliza, $telefono, $id]);
    }
}

?>