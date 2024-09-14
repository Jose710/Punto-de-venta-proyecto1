<!-- Agregado -->

<?php

if (isset($_POST['Abrir'])){

    $id_user = $_SESSION['idusuario'];
    date_default_timezone_set('America/Guatemala');
    $fecha = date(format: 'Y-m-d H:i:s');

    $codigo_caja =  $_POST["Abrir"];;
    $idusuario = $id_user;
    $fechaAp = $fecha;
    $tipo_movimiento = "Apertura";
    $valor = $_POST["cantidad"];
    $estado = "activa";
    $caja = new CajaModel();

    if (empty($valor)){
      echo'<div class="alert alert-danger" role="alert">
        Ingrese un valor para aperturar
      </div>'; 
    }else{
      
      if($caja->AbrirCaja($codigo_caja, $idusuario, $fechaAp, $tipo_movimiento, $valor, $estado  )){
        echo'<div class="alert alert-success" role="alert">
        Caja aperturada
        </div>';
        $_SESSION['BotonEstado'] = true;
        unset($_SESSION['BotonEstadoC']);
        $_SESSION['codcaja'] = $codigo_caja;
        $_SESSION['cancaja'] = $valor;
      }else{
          echo'<div class="alert alert-danger" role="alert">
          Error al abrir caja
          </div>';   
       }
    }
}

if (isset($_POST['Cerrar'])){


  $billete1 = $_POST["doscientos"];
  $billete2 = $_POST["cien"];
  $billete3 = $_POST["cincuenta"];
  $billete4 = $_POST["veinte"];
  $billete5 = $_POST["diez"];
  $billete6 = $_POST["cinco"];
  $billete7 = $_POST["uno"];
  $billete8 = $_POST["cincuentac"];
  $billete9 = $_POST["veinticincoc"];
  $billete10 = $_POST["centavo"];



  if(empty($billete1) && empty($billete2) && empty($billete3) && empty($billete4) && empty($billete5) && empty($billete6) && empty($billete7) && empty($billete8) && empty($billete9) && empty($billete10)){
    echo'<div class="alert alert-danger" role="alert">
    Campos vacios!
   </div>';   
  }else{
    $tb1 = $billete1 * 200;
    $d1 = "200";
    $tb2 = $billete2 * 100;
    $d2 = "100";
    $tb3 = $billete3 * 50;
    $d3 = "50";
    $tb4 = $billete4 * 20;
    $d4 = "20";
    $tb5 = $billete5 * 10;
    $d5 = "10";
    $tb6 = $billete6 * 5;
    $d6 = "5";
    $tb7 = $billete7 * 1;
    $d7 = "1";
    $tb8 = $billete8 * 0.5;
    $d8 = "0.50";
    $tb9 = $billete9 * 0.25;
    $d9 = "0.25";
    $tb10 = $billete10 * 0.01;
    $d10 = "0.01";

    $totall = $tb1+$tb2+$tb3+$tb4+$tb5+$tb6+$tb7+$tb8+$tb9+$tb10;

    $id_user = $_SESSION['idusuario'];
    date_default_timezone_set('America/Guatemala');
    $fecha = date(format: 'Y-m-d H:i:s');
  
    $codigo_caja =  $_POST["Cerrar"];;
    $idusuario = $id_user;
    $fechaAp = $fecha;
    $tipo_movimiento = "Cierre";
    $valor = $_SESSION['cancaja'];
    $estado = "inactiva";

  if($totall == $valor){
    $caja = new CajaModel();

    $caja->Agregarbillete($d1,$billete1,$codigo_caja);
    $caja->Agregarbillete($d2,$billete2,$codigo_caja);
    $caja->Agregarbillete($d3,$billete3,$codigo_caja);
    $caja->Agregarbillete($d4,$billete4,$codigo_caja);
    $caja->Agregarbillete($d5,$billete5,$codigo_caja);
    $caja->Agregarbillete($d6,$billete6,$codigo_caja);
    $caja->Agregarbillete($d7,$billete7,$codigo_caja);
    $caja->Agregarbillete($d8,$billete8,$codigo_caja);
    $caja->Agregarbillete($d9,$billete9,$codigo_caja);
    $caja->Agregarbillete($d10,$billete10,$codigo_caja);


    if($caja->CerrarCaja($codigo_caja, $idusuario, $fechaAp, $tipo_movimiento, $valor, $estado  )){
      echo'<div class="alert alert-danger" role="alert">
      Caja cerrada
      </div>';
      $_SESSION['BotonEstadoC'] = true;
      unset($_SESSION['BotonEstado']);
      $_SESSION['codcaja'] = "";
      $_SESSION['cancaja'] = 0.00;
    }else{
        echo'<div class="alert alert-danger" role="alert">
        Error al cerrar caja
        </div>';   
     }
  }else{
    echo'<div class="alert alert-danger" role="alert">
    Caja no cuadrada!
    </div>';   
  }
    
    }
  }
  if (isset($_POST['AbrirA'])){
    echo'<div class="alert alert-danger" role="alert">
     Caja Abierta!
    </div>';   
  }
  if (isset($_POST['CerrarC'])){
    echo'<div class="alert alert-danger" role="alert">
    Caja Cerrada!
    </div>';   
  }



?>
<!-- Agregado -->
