<?php

include_once 'connect.php';

$id = $_GET['id'];

$sqlDel = "delete from Libros where id = '$id'";

if(mysqli_query($conn, $sqlDel)){
    header("Location: http://localhost:3000/list");
}else{
    echo 'Los datos que has intentado borrar, falla. <a href="http://localhost:3000/list">Indice</a> <br />';
    echo "Error: " . $sqlDel . "<br>" . mysqli_error($conn);
}

?>