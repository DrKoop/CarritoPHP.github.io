

<?php 

    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';
   
?>

<br>
<h3>Lista del Carrito</h3>
<!-- VALIDACION SI EL CARRITO CONTIENE INFO/ NO -->
<?php if(!empty($_SESSION['CARRITO'])){ ?> 

<table class="table table-light table-bordered">
    <tbody>
        <!-- COLUMNAS-CABECERAS -->
        <tr>
            <th width="40%">Descripción</th>
            <th width="15%" class="text-center">Cantidad</th>
            <th width="20%" class="text-center">Precio</th>
            <th width="20%" class="text-center">Total</th>
            <th width="5%">--</th>
        </tr>
        <?php $total = 0; ?>
            <!-- FILAS-CONTENIDO -->
            <?php foreach($_SESSION['CARRITO'] as $indice=>$producto){ ?>
            <tr>
                <td width="40%"> <?php echo $producto['NOMBRE']; ?> </td>
                <td width="15%" class="text-center"><?php echo $producto['CANTIDAD']; ?></td>
                <td width="20%" class="text-center"> $ <?php echo $producto['PRECIO']; ?></td>
                <td width="20%" class="text-center"> $ <?php
                echo number_format($producto['PRECIO'] * $producto['CANTIDAD'] ,2);?></td>
                <td width="5%">
                    <form action="" method="post">
                        <input 
                        type="hidden"
                         name="id" 
                         id="id" 
                         value="<?php echo openssl_encrypt($producto['ID'], COD,KEY);?>">
                        <button 
                        type="submit"
                        class="btn btn-danger"
                        name="btnAccion"
                        value="Eliminar"
                         >Eliminar</button>
                    </form>
                </td>
            </tr>
            <?php $total = $total + ($producto['PRECIO'] * $producto['CANTIDAD']); ?>
            <?php } ?>

        <tr>
            <td colspan="3" align="right"> <h3>Total</h3> </td>
            <td align="right" > <h3>$ <?php echo number_format($total,2); ?> </h3> </td>
            <td></td>
        </tr>

        <tr>
            <td colspan="5">
                <form action="pagar.php" method="post">
                    <div class="alert alert-success">
                        <div class="form-group">
                        <label for="my-input">Correo de Contacto:</label>
                        <input 
                        id="email"
                        name="email"
                        class="form-control"
                        type="email"
                        placeholder="Escribe Tu Correo de Contacto"
                        required >
                        </div>
                        <small
                        id="emailHelp"
                        class="form-text text-muted"
                        >
                        Los Productos Se Enviarán a este Correo. 
                        </small>
                    </div>
                        <button class="btn btn-primary btn-lg btn-block" type="submit" value="proceder" name="btnAccion" >
                            Proceder a Pagar
                        </button>
                </form>
            </td>
        </tr>
    </tbody>
</table>

<?php }else { ?>

    <div class="alert alert-success">
        No hay articulos en el Carrito...
    </div>

<?php } ?>
 

<?php 
    include 'templates/footer.php';
?>
