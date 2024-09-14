<?php
require_once '../models/clientes.php';
$option = (empty($_GET['option'])) ? '' : $_GET['option'];
$clientes = new ClientesModel();
switch ($option) {
    case 'listar':
        $data = $clientes->getClientes();
        for ($i = 0; $i < count($data); $i++) {
            $data[$i]['accion'] = '<div class="d-flex">
                <a class="btn btn-danger btn-sm" onclick="deleteCliente(' . $data[$i]['idcliente'] . ')"><i class="fas fa-eraser"></i></a>
                <a class="btn btn-primary btn-sm" onclick="editCliente(' . $data[$i]['idcliente'] . ')"><i class="fas fa-edit"></i></a>
                </div>';
        }
        echo json_encode($data);
        break;
    case 'save':
        $nombre = $_POST['nombre'];
        $direccion = $_POST['direccion'];
        $correo = $_POST['correo'];
        $sexo = $_POST['sexo'];
        $nit = $_POST['nit'];
        $cui = $_POST['cui'];
        $segurom = $_POST['segurom'];
        $poliza = $_POST['poliza'];
        $telefono = $_POST['telefono'];
        $id_cliente = $_POST['id_cliente'];

        if ($id_cliente == '') {
            $consult = $clientes->comprobarTelefono($telefono);
            if (empty($consult)) {
                $result = $clientes->saveCliente($nombre, $direccion, $correo, $sexo, $nit, $cui, $segurom, $poliza, $telefono);
                if ($result) {
                    $res = array('tipo' => 'success', 'mensaje' => 'CLIENTE REGISTRADO');
                } else {
                    $res = array('tipo' => 'error', 'mensaje' => 'ERROR AL AGREGAR');
                }
            } else {
                $res = array('tipo' => 'error', 'mensaje' => 'EL TELEFONO YA EXISTE');
            }
        } else {
            $result = $clientes->updateCliente($nombre, $direccion, $correo, $sexo, $nit, $cui, $segurom, $poliza, $telefono, $id_cliente);
            if ($result) {
                $res = array('tipo' => 'success', 'mensaje' => 'CLIENTE MODIFICADO');
            } else {
                $res = array('tipo' => 'error', 'mensaje' => 'ERROR AL MODIFICAR');
            }
        }
        echo json_encode($res);
        break;
      echo   print_r;
    case 'delete':
        $id = $_GET['id'];
        $data = $clientes->deleteCliente($id);
        if ($data) {
            $res = array('tipo' => 'success', 'mensaje' => 'CLIENTE ELIMINADO');
        } else {
            $res = array('tipo' => 'error', 'mensaje' => 'ERROR AL ELIMINAR');
        }
        echo json_encode($res);
        break;
    case 'edit':
        $id = $_GET['id'];
        $data = $clientes->getCliente($id);
        echo json_encode($data);
        break;

    default:
        # code...
        break;
}
