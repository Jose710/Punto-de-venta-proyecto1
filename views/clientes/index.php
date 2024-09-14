<form id="frmCliente" autocomplete="off">
    <div class="card mb-2">
        <div class="card-body">
            <input type="hidden" id="id_cliente" name="id_cliente">
            <div class="row">
                <div class="col-md-4">
                    <label for="">Nombre <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-list"></i></span>
                        </div>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="">Dirección <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-home"></i></span>
                        </div>
                        <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección">
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="">Correo <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                        </div>
                        <input type="text" class="form-control" id="correo" name="correo" placeholder="Correo">
                    </div>
                </div>
                <div class="col-md-4">
                    <label for="">Sexo <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-info"></i></span>
                        </div>
                        <input type="text" class="form-control" id="sexo" name="sexo" placeholder="Sexo">
                    </div>
                </div>
               
                <div class="col-md-4">
                    <label for="">NIT <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-home"></i></span>
                        </div>
                        <input type="text" class="form-control" id="nit" name="nit" placeholder="NIT">
                    </div>
                </div>
 
                <div class="col-md-4">
                    <label for="">CUI <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-home"></i></span>
                        </div>
                        <input type="text" class="form-control" id="cui" name="cui" placeholder="CUI">
                    </div>
                </div>

                <div class="col-md-4">
                    <label for="">Seguro Medico <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-heart"></i></span>
                        </div>
                        <input type="number" class="form-control" id="segurom" name="segurom" placeholder="Seguro Medico">
                    </div>
                </div>
                
                <div class="col-md-4">
                    <label for="">Numero de poliza <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-heart"></i></span>
                        </div>
                        <input type="number" class="form-control" id="poliza" name="poliza" placeholder="Numero de poliza">
                    </div>
                </div>
                
                <div class="col-md-4">
                    <label for="">Telefono <span class="text-danger">*</span></label>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-phone"></i></span>
                        </div>
                        <input type="number" class="form-control" id="telefono" name="telefono" placeholder="Telefono">
                    </div>
                </div>
               
          
            </div>
        </div>
        <div class="card-footer text-right">
            <button type="button" class="btn btn-danger" id="btn-nuevo">Nuevo</button>
            <button type="submit" class="btn btn-primary" id="btn-save">Guardar</button>
        </div>
    </div>
</form>
<div class="card">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-striped table-hover" style="width: 100%;" id="table_clientes">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">telefono</th>
                        <th scope="col">Dirección</th>
                        <th scope="col">Nit</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
</div>