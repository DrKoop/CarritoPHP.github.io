<?php 

    include 'global/config.php';
    include 'global/conexion.php';
    include 'carrito.php';
    include 'templates/cabecera.php';
   
?>

<?php 

    if($_POST){
        $total = 0;
        /* session_id = setea y devuelve un valor unico, por SESSION */
        $SID = session_id();
        $Correo = $_POST['email'];

        foreach($_SESSION['CARRITO'] as $indice=>$producto){
            $total = $total + ($producto['PRECIO'] * $producto['CANTIDAD']);
        }
        $sentencia = $pdo->prepare("INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES (NULL,:ClaveTransaccion, '', NOW(),:Correo,:Total, 'pendiente');");
        $sentencia->bindParam(":ClaveTransaccion", $SID);
        $sentencia->bindParam(":Correo", $Correo);
        $sentencia->bindParam(":Total", $total);
        $sentencia->execute();
        /* Ultimo ID insertado en la tabla Ventas */
        $idVenta = $pdo->lastInsertId();

        /* TEST FOREIGN-KEYS-RELACIONES */

        foreach($_SESSION['CARRITO'] as $indice=>$producto){
          $sentencia=$pdo->prepare("INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES (NULL,:IDVENTA,:IDPRODUCTO,:PRECIOUNITARIO,:CANTIDAD, '0');");  

          $sentencia->bindParam(":IDVENTA", $idVenta);
          $sentencia->bindParam(":IDPRODUCTO", $producto['ID']);
          $sentencia->bindParam(":PRECIOUNITARIO", $producto['PRECIO']);
          $sentencia->bindParam(":CANTIDAD", $producto['CANTIDAD']);
          $sentencia->execute();
        }
        //echo "<h3>".$total."</h3>";
    }
?>


 <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=MXN" data-sdk-integration-source="button-factory"></script>

    <!-- Para cambiar al entorno de producción usar: https://www.paypal.com/cgi-bin/webscr -->
        <!-- MENSAJE FINAL PARA CONFIRMAR PAGO + PAYPAL -->
        <div class="jumbotron text-center">
            <h1 class="display-4">Confirmación de Pago</h1>
            <hr class="my-4">
            <p class="lead">Estas a punto de pagar con PayPal la Cantidad de : 
                <h4> $ <?php echo number_format($total, 2);  ?> </h4>
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post" id="form_pay">
                    
                    <!-- Valores requeridos -->
                    <!-- *EN VALUE BUSSINES TAMBIEN MODIFICAR POR LA CUENTA OFICIAL DE PRODUCCION DE LA MARCA-NEGOCIO* -->
                    <input type="hidden" name="business" value="sb-xaxjh13782210@business.example.com">
                    <input type="hidden" name="cmd" value="_xclick">
                    <input type="hidden" name="item_name" id="" value="<?php echo $producto['NOMBRE']; ?>" required="">
                    <input type="hidden" name="amount" id="" value="<?php echo $total; ?>" required="">
                    <input type="hidden" name="currency_code" value="MXN">
                    <input type="hidden" name="quantity" id="" value="<?php echo $producto['CANTIDAD']; ?>" required="">
                    <input type="hidden" name="item_number" value="<?php echo $producto['CANTIDAD']; ?>">

                                <div style="text-align: center ;">
                                <input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                <!-- <button id="smart-button-container" type="submit">Pagar ahora con Paypal!</button> -->
                                </div>

                </form>
            </p>
            <p>Los productos seran Descargados/Enviados, una vez se Confirme su Pago
                <br>
                <strong>(Atencion al cliente: drkoop@services.com)</strong>
            </p>
        </div>


    





<?php 
    include 'templates/footer.php';
?>




