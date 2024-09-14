<?php
$id_venta = (empty($_GET['sale'])) ? null : $_GET['sale'];

if ($id_venta != null) {
    require_once '../../config.php';
    require_once '../../models/reporte.php';

    $ventas = new Reporte();
    $datos = $ventas->getConfiguracion();
    $result = $ventas->getSale($id_venta);
    $products = $ventas->getProductsVenta($id_venta);
    $usuario = $ventas->getuser($id_venta);

	# Incluyendo librerias necesarias #
	require "./code128.php";

	$pdf = new PDF_Code128('P','mm','Letter');
	$pdf->SetMargins(17,17,17);
	$pdf->AddPage();

	# Logo de la empresa formato png #
	$pdf->Image('./img/descarga.png',120,12,89,39,'PNG');

	# Encabezado y datos de la empresa #
	$pdf->SetFont('Arial','B',16);
	$pdf->SetTextColor(32,100,210);
	$pdf->Cell(150,10,iconv("UTF-8", "ISO-8859-1",strtoupper("Abarroteria")),0,0,'L');

	$pdf->Ln(9);

	$pdf->SetFont('Arial','',10);
	$pdf->SetTextColor(39,39,51);

	$pdf->Ln(5);

	$pdf->Cell(150,9,iconv("UTF-8", "ISO-8859-1","Quetzaltenango"),0,0,'L');

	$pdf->Ln(5);

	$pdf->Cell(150,9,iconv("UTF-8", "ISO-8859-1","Teléfono: 46584587"),0,0,'L');

	$pdf->Ln(5);

	$pdf->Cell(150,9,iconv("UTF-8", "ISO-8859-1","Email: abarroteria@gmail.com"),0,0,'L');

	$pdf->Ln(10);

	$pdf->SetFont('Arial', '', 10);
    date_default_timezone_set('America/Guatemala'); 
    $pdf->SetFont('Arial', '', 10);
    $pdf->Cell(30, 7, iconv("UTF-8", "ISO-8859-1", "Fecha de emisión:"), 0, 0);
    $pdf->SetTextColor(97, 97, 97);
    $pdf->Cell(116, 7, iconv("UTF-8", "ISO-8859-1", date("d/m/Y h:i A")), 0, 0, 'L');
    
	$pdf->SetFont('Arial','B',10);
	$pdf->SetTextColor(39,39,51);
	$pdf->Cell(35,7,iconv("UTF-8", "ISO-8859-1",strtoupper("Factura No.")),0,0,'C');

	$pdf->Ln(7);

	$pdf->SetFont('Arial','',10);
	$pdf->Cell(12,7,iconv("UTF-8", "ISO-8859-1","Cajero:"),0,0,'L');
	$pdf->SetTextColor(97,97,97);
	$pdf->Cell(134,7,iconv("UTF-8", "ISO-8859-1", utf8_decode($usuario['nombre']) ),0,0,'L');
	$pdf->SetFont('Arial','B',10);
	$pdf->SetTextColor(97,97,97);
	$pdf->Cell(35,7,iconv("UTF-8", "ISO-8859-1", utf8_decode($result['id'])),0,0,'C');

	$pdf->Ln(10);

	$pdf->SetFont('Arial','',10);
	$pdf->SetTextColor(39,39,51);
	$pdf->Cell(13,7,iconv("UTF-8", "ISO-8859-1","Cliente:"),0,0);
	$pdf->SetTextColor(97,97,97);
	$pdf->Cell(60, 7, utf8_decode($result['nombre']), 0, 0);
	$pdf->SetTextColor(39,39,51);
	$pdf->Cell(8,7,iconv("UTF-8", "ISO-8859-1","NIT: "),0,0,'L');
	$pdf->SetTextColor(97,97,97);
	$pdf->Cell(60,7, utf8_decode($result['nit']),0,0,'L');
	$pdf->SetTextColor(39,39,51);
	$pdf->Cell(7,7,iconv("UTF-8", "ISO-8859-1","Tel:"),0,0,'L');
	$pdf->SetTextColor(97,97,97);
	$pdf->Cell(37, 7, utf8_decode($result['telefono']), 0, 0, 'L');
	$pdf->SetTextColor(39,39,51);

	$pdf->Ln(7);

	$pdf->SetTextColor(39,39,51);
	$pdf->Cell(18,7,iconv("UTF-8", "ISO-8859-1","Dirreccion:"),0,0);
	$pdf->SetTextColor(97,97,97);
    $pdf->Cell(100,7, utf8_decode($result['direccion']), 0, 0,'L');
	$pdf->Ln(9);

	# Tabla de productos #
	$pdf->SetFont('Arial','',8);
	$pdf->SetFillColor(23,83,201);
	$pdf->SetDrawColor(23,83,201);
	$pdf->SetTextColor(255,255,255);
	$pdf->Cell(90,8,iconv("UTF-8", "ISO-8859-1","Descripción"),1,0,'C',true);
	$pdf->Cell(15,8,iconv("UTF-8", "ISO-8859-1","Cant."),1,0,'C',true);
	$pdf->Cell(25,8,iconv("UTF-8", "ISO-8859-1","Precio"),1,0,'C',true);
	$pdf->Cell(51,8,iconv("UTF-8", "ISO-8859-1","Subtotal"),1,0,'C',true);

	$pdf->Ln(8);

	
	$pdf->SetTextColor(39,39,51);

    $subtotalg = 0;

	/*----------  Detalles de la tabla  ----------*/
    foreach ($products as $product){
    
    	$pdf->Cell(90,7,iconv("UTF-8", "ISO-8859-1",$product['descripcion']),'L',0,'C');
	$pdf->Cell(15,7,iconv("UTF-8", "ISO-8859-1",$product['cantidad']),'L',0,'C');
	$pdf->Cell(25,7,iconv("UTF-8", "ISO-8859-1","Q".$product['precio']),'L',0,'C');
	$pdf->Cell(51,7,iconv("UTF-8", "ISO-8859-1","Q".($product['cantidad'] * $product['precio'])),'LR',0,'C');
	$pdf->Ln(7);

    $subtotal = $product['cantidad'] * $product['precio'];
    $subtotalg += $subtotal;
    }
	/*----------  Fin Detalles de la tabla  ----------*/


    $subtotalg = $subtotalg - utf8_decode($result['descuento']);
    $ivaPorcentaje = 0.12; // Definir el porcentaje de IVA
    $iva = $subtotalg * $ivaPorcentaje; // Calcular el IVA
    $total = $subtotalg; // Calcular el total a pagar
	
	$pdf->SetFont('Arial','B',9);
	
	# Impuestos & totales #

	$pdf->Cell(100,7,iconv("UTF-8", "ISO-8859-1",''),'T',0,'C');
$pdf->Cell(15,7,iconv("UTF-8", "ISO-8859-1",''),'T',0,'C');
$pdf->Cell(32,7,iconv("UTF-8", "ISO-8859-1","SUBTOTAL"),'T',0,'C');
$pdf->Cell(34,7,iconv("UTF-8", "ISO-8859-1","Q".number_format($subtotalg, 2)),'T',0,'C');
$pdf->Ln(7);

$pdf->Cell(100,7,iconv("UTF-8", "ISO-8859-1",''),'',0,'C');
$pdf->Cell(15,7,iconv("UTF-8", "ISO-8859-1",''),'',0,'C');
$pdf->Cell(32,7,iconv("UTF-8", "ISO-8859-1","Descuento Mayorista"),'',0,'C');
$pdf->Cell(34,7,iconv("UTF-8", "ISO-8859-1","Q".number_format(utf8_decode($result['descuento']), 2)),'',0,'C');
$pdf->Ln(7);


	$pdf->Cell(100,7,iconv("UTF-8", "ISO-8859-1",''),'',0,'C');
	$pdf->Cell(15,7,iconv("UTF-8", "ISO-8859-1",''),'',0,'C');
	$pdf->Cell(32,7,iconv("UTF-8", "ISO-8859-1","IVA (12%)"),'',0,'C');
	$pdf->Cell(34,7,iconv("UTF-8", "ISO-8859-1","Q".number_format($iva, 2)),'',0,'C');

	$pdf->Ln(7);

	$pdf->Cell(100,7,iconv("UTF-8", "ISO-8859-1",''),'',0,'C');
	$pdf->Cell(15,7,iconv("UTF-8", "ISO-8859-1",''),'',0,'C');


	$pdf->Cell(32,7,iconv("UTF-8", "ISO-8859-1","TOTAL A PAGAR"),'T',0,'C');
	$pdf->Cell(34,7,iconv("UTF-8", "ISO-8859-1","Q".number_format($total, 2)),'T',0,'C');

	$pdf->Ln(12);

	$pdf->SetFont('Arial','',9);

	$pdf->SetTextColor(39,39,51);
	$pdf->MultiCell(0,9,iconv("UTF-8", "ISO-8859-1","*** Precios de productos incluyen impuestos. Para poder realizar un reclamo o devolución debe de presentar esta factura ***"),0,'C',false);

	$pdf->Ln(9);

	# Codigo de barras #
	$pdf->SetFillColor(39,39,51);
	$pdf->SetDrawColor(23,83,201);
	$pdf->Code128(72,$pdf->GetY(),"COD000001V0001",70,20);
	$pdf->SetXY(12,$pdf->GetY()+21);
	$pdf->SetFont('Arial','',12);
	$pdf->MultiCell(0,5,iconv("UTF-8", "ISO-8859-1","COD000001V0001"),0,'C',false);

	# Nombre del archivo PDF #
	$pdf->Output("I","Factura_Nro_1.pdf",true);
}
?>