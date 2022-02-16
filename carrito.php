<?php 
session_start();

$mensaje = "";

if(isset($_POST['btnAccion'])){
    switch($_POST['btnAccion']){
        case 'Agregar':

            if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY ) )){
                $ID =  openssl_decrypt($_POST['id'],COD,KEY );
                $mensaje.= "ok desencriptado".$ID;
            }else{
                $mensaje.= "error".$ID; break;
            }
            /*  */
            if(is_string( openssl_decrypt($_POST['nombre'],COD,KEY ) )){
                $NOMBRE =  openssl_decrypt($_POST['nombre'],COD,KEY );
                $mensaje.= "ok desencriptado".$NOMBRE; 
            }else{
                $mensaje.= "error".$NOMBRE; break;
            }
            /*  */
            if(is_numeric( openssl_decrypt($_POST['precio'],COD,KEY ) )){
                $PRECIO =  openssl_decrypt($_POST['precio'],COD,KEY );
                $mensaje.= "ok desencriptado".$PRECIO;
            }else{
                $mensaje.= "error".$PRECIO; break;
            }
            /*  */
            if(is_numeric( openssl_decrypt($_POST['cantidad'],COD,KEY ) )){
                $CANTIDAD =  openssl_decrypt($_POST['cantidad'],COD,KEY );
                $mensaje.= "ok desencriptado".$CANTIDAD;
            }else{
                $mensaje.= "error".$CANTIDAD; break;
            }

        /* VAriables de sesion */
        if(!isset($_SESSION['CARRITO'])){
            /* Vamos a llenar el array, con toda la info seleccionada ,si la variable de sesion NO EXISte */
            $producto = array(
                'ID' =>$ID,
                'NOMBRE' =>$NOMBRE,
                'PRECIO' =>$PRECIO,
                'CANTIDAD' =>$CANTIDAD
            );
            $_SESSION['CARRITO'][0] = $producto;
            $mensaje = "Producto Agregado al Carrito";
        }else{
            /* Evitamos Duplicados */
            $idProductos = array_column( $_SESSION['CARRITO'], "ID");
            if(in_array($ID, $idProductos)){
                echo "<script> alert(' El producto ya fue seleccionado')</script>";
                $mensaje = "";
            }else{
                /* Si existe una session y productos, los contabiliza */
                $NumeroProductos = count( $_SESSION['CARRITO'] );
                $producto = array(
                    'ID' =>$ID,
                    'NOMBRE' =>$NOMBRE,
                    'PRECIO' =>$PRECIO,
                    'CANTIDAD' =>$CANTIDAD
                );
                $_SESSION['CARRITO'][$NumeroProductos] = $producto;
                $mensaje = "Producto Agregado al Carrito";
            }
        }
        //$mensaje = print_r( $_SESSION, true);
       

        break;
        /* ELIMINAR INFO CARRITO */
        case "Eliminar":
            if(is_numeric( openssl_decrypt($_POST['id'],COD,KEY ) )){
                $ID =  openssl_decrypt($_POST['id'],COD,KEY );
                    /*RECORREMOS TODOS LOS ELEMENTOS,YA DESENCRIPTADOS  */
                    foreach($_SESSION['CARRITO'] as $indice=>$producto){
                        /*EVALUAR QUE EL PRODUCTO, COINCIDA CON EL ID  ANTERIOR y ELIMINA EL REGISTRO */
                        if($producto['ID'] == $ID ){
                            unset($_SESSION['CARRITO'][$indice]);
                            //echo "<script> alert(' Elemnto Borrado')</script>";
                        }
                    }
            }else{
                $mensaje.= "error".$ID; break;
            }
        break;
    }
}
?>