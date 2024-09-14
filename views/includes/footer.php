</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Agregado -->
<?php
function generarcodigocaja($length = 6) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $randomCode = '';
  
    for ($i = 0; $i < $length; $i++) {
        $randomCode .= $characters[rand(0, strlen($characters) - 1)];
    }
  
    return $randomCode;
  }
  $codigo = generarcodigocaja();
  ?>
<!-- Agregado -->


<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Tu pagina <?php echo date('Y'); ?></span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Esta seguro de salir?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<?php echo RUTA . 'controllers/ventasController.php?option=logout'; ?>">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Agregado -->
<!-- Modal open caja -->
<div class="modal fade" id="cargarcaja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Iniciar caja</h1>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Ingrese la cantidad que desea para abrir caja:
        <div class="input-group mb-3">
       <span class="input-group-text">Q</span>
       <span class="input-group-text">0.00</span>
      <input type="text" name="cantidad" id="cantidad" class="form-control" aria-label="Dollar amount (with dot and two decimal places)" name="cantidad" id="cantidad">
     </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>

        <?php
                 if(isset($_SESSION['BotonEstado'])){
                ?>
        <button type="submit" class="btn btn-primary" name="AbrirA" id="AbrirA">Abrir</button>
                <?php
                 }else{
                ?>
        <button type="submit" class="btn btn-primary" name="Abrir" id="Abrir" value="<?php echo $codigo?>" >Abrir</button>
                <?php 
                 }
                ?>    
      </div>
    </div>
  </div>
</div>
<!-- Agregado -->

<!-- Agregado -->
<!-- Modal cerrar caja 1 -->
<?php if(isset($_SESSION['BotonEstado'])){
  
  ?>

<div class="modal fade" id="cerrarcaja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Cerrar caja</h1>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      Cuadrar caja antes de cerrar.
      <div class="input-group mb-3">
  <span class="input-group-text">Q200</span>
  <input type="text" class="form-control" name="doscientos" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Q100</span>
  <input type="text" class="form-control" name="cien" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Q50</span>
  <input type="text" class="form-control" name="cincuenta" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Q20</span>
  <input type="text" class="form-control" name="veinte" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Q10</span>
  <input type="text" class="form-control" name="diez" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Q5</span>
  <input type="text" class="form-control" name="cinco" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">Q1</span>
  <input type="text" class="form-control" name="uno" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">0.50</span>
  <input type="text" class="form-control" name="cincuentac" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">0.25</span>
  <input type="text" class="form-control" name="veinticincoc" aria-label="Dollar amount (with dot and two decimal places)">
</div>
<div class="input-group mb-3">
  <span class="input-group-text">0.01</span>
  <input type="text" class="form-control" name="centavo" aria-label="Dollar amount (with dot and two decimal places)">
</div>

    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <?php
                 if(isset($_SESSION['BotonEstadoC'])){
                ?>
                <button type="submit" class="btn btn-danger" name="CerrarC" id="CerrarC" >Cerrar</button>
                <?php
                 }else{
                ?>
                
                <button type="submit" class="btn btn-danger" name="Cerrar" id="Cerrar" value="<?php echo $_SESSION['codcaja'];?>">Cerrar</button>
                <?php 
                 }
                ?>
      </div>
    </div>
  </div>
</div>

<?php }else{
  ?>

<div class="modal fade" id="cerrarcaja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Cerrar caja</h1>
        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      Cuadrar caja antes de cerrar.

    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <?php
                 if(isset($_SESSION['BotonEstadoC'])){
                ?>
                <button type="submit" class="btn btn-danger" name="CerrarC" id="CerrarC" >Cerrar</button>
                <?php
                 }else{
                ?>
                
                <button type="submit" class="btn btn-danger" name="CerrarC" id="CerrarC" >Cerrar</button>
                <?php 
                 }
                ?>
      </div>
    </div>
  </div>
</div>


<?php }
  ?>
</form>
<!-- Agregado -->


<!-- Bootstrap core JavaScript-->
<script src="<?php echo RUTA . 'assets/'; ?>vendor/jquery/jquery.min.js"></script>
<script src="<?php echo RUTA . 'assets/'; ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


<!-- Core plugin JavaScript-->
<script src="<?php echo RUTA . 'assets/'; ?>vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?php echo RUTA . 'assets/'; ?>js/sb-admin-2.min.js"></script>

<script src="<?php echo RUTA . 'assets/'; ?>js/chart.js"></script>


<!-- Page level custom scripts -->
<script src="<?php echo RUTA . 'assets/'; ?>vendor/fontawesome-free/all.min.js"></script>
<script src="<?php echo RUTA . 'assets/'; ?>js/snackbar.min.js"></script>
<script src="<?php echo RUTA . 'assets/'; ?>js/axios.min.js"></script>

<script type="text/javascript" src="<?php echo RUTA . 'assets/'; ?>js/datatables.min.js"></script>
<script type="text/javascript" src="<?php echo RUTA . 'assets/'; ?>js/moment.min.js"></script>
<script type="text/javascript" src="<?php echo RUTA . 'assets/'; ?>js/dataTables.dateTime.min.js"></script>

<script>
    const ruta = '<?php echo RUTA; ?>';

    function message(tipo, mensaje) {
        Snackbar.show({
            text: mensaje,
            pos: 'top-right',
            backgroundColor: tipo == 'success' ? '#079F00' : '#FF0303',
            actionText: 'Cerrar'
        });
    }
</script>

<script src="<?php echo RUTA . 'assets/'; ?>js/caja.js"></script>


<?php
if (!empty($_GET['pagina'])) {
    $script = $_GET['pagina'] . '.js';
    if (file_exists('assets/js/' . $script)) {
        echo '<script src="'. RUTA . 'assets/js/' . $script .'"></script>';
    }
}else{
    echo '<script src="'. RUTA . 'assets/js/index.js"></script>';
} ?>

</body>

</html>