
<!-- FORMA CONEXION 1 -->

<!-- <?php 


$servidor = "mysql:dbname".BD.";host=".SERVIDOR;

try{
    $pdo = new PDO($servidor, USUARIO, PASSWORD, 
        array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8")
    );

    

}catch(PDOException $e){
    echo "<script> alert('error')</script>";
}

?> -->


<!-- FORMA CONEXION 2 -->

<?php

function pdo_connect_mysql() {

    try {

     return new PDO('mysql:host=' . SERVIDOR . ';dbname=' . BD . ';charset=utf8', USUARIO, PASSWORD, [

            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,

            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,

            PDO::ATTR_EMULATE_PREPARES => false

          ]);

    } catch (PDOException $exception) {

     // If there is an error with the connection, stop the script and display the error.

     die ('Failed to connect to database!');

    }

}



$pdo = pdo_connect_mysql();



?>

