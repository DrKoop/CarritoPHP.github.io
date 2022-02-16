<?php 

    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';
   
?>
            <br>
            <?php if($mensaje!= ""){ ?>
            <div class="alert alert-success" role="alert">
                <?php echo $mensaje; ?>
                <a href="mostrarCarrito.php" class="badge badge-success">Ver Carrito</a>
            </div>
            <?php } ?>
            <!-- COLUMNAS PRODUCTOS -->
            <div class="row">
                <?php 
                    /* Consulta de datos para verificar que los mismos, se esten pasando correctamente */
                    $sentencia=$pdo->prepare("SELECT * FROM `tblproductos`");
                    $sentencia->execute();
                    $lista = $sentencia->fetchAll(PDO::FETCH_ASSOC);
                    /* print_r($lista); */
                ?>
                <!--  -->
                <?php 
                    foreach($lista as $producto){ ?> 
                <div class="col-3">
                    <div class="card" style="width: 18rem;" title="Titulo del producto">
                        <img
                         title="<?php echo $producto['Nombre']; ?>" 
                         class="card-img-top"
                         src="<?php echo $producto['imagen']; ?>" 
                         alt="Titulo"
                         data-toggle="popover"
                         data-trigger="hover"
                         data-content="<?php echo $producto['Descripcion']; ?>"
                        >
                        <div class="card-body">
                            <span><?php echo $producto['Nombre'] ?></span>
                            <h5 class="card-title"> $<?php echo $producto['Precio'] ?></h5>
                            <p class="card-text"><?php echo $producto['Descripcion'] ?></p>

                            <form action="" method="post">

                                <input type="hidden" name="id" id="id" value="<?php echo openssl_encrypt($producto['id'], COD,KEY);?>">
                                <input type="hidden" name="nombre" id="nombre" value="<?php echo openssl_encrypt($producto['Nombre'], COD,KEY);?>">
                                <input type="hidden" name="precio" id="precio" value="<?php echo openssl_encrypt($producto['Precio'], COD,KEY);?>">
                                <input type="hidden" name="cantidad" id="cantidad" value="<?php echo openssl_encrypt( 1, COD,KEY);?>">

                                <button type="submit"
                                    name="btnAccion" 
                                    id="" 
                                    value="Agregar" 
                                    class="btn btn-primary">Agregar al carrito 
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                <?php }  ?>
                <!--  -->
            </div>
        </div>
        <script>
            $(function () {
                $('[data-toggle="popover"]').popover({
                    trigger: 'hover'
                })
            })
        </script>
        <br>
<?php 
    include 'templates/footer.php';
?>