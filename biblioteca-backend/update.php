<?php

include_once 'connect.php';

$id = $_GET['id'];

if (isset($_POST["title"], $_POST["img"], $_POST["author"], $_POST["genre"], $_POST["editorial"], $_POST["isbn"], $_POST["description"]) and $_POST["title"]!="" and $_POST["img"]!="" and $_POST["author"]!="" and $_POST["genre"]!="" and  $_POST["editorial"]!="" and $_POST["isbn"]!="" and $_POST["description"]!="" ){

    $Titulo = $_POST["title"];
    $Imagen = $_POST["img"];
    $Autor = $_POST["author"];
    $Genero = $_POST["genre"];
    $Editorial = $_POST["editorial"];
    $ISBN = $_POST["isbn"];
    $Descripcion = $_POST["description"];
       
    $sql = "update Libros set titulo = '$Titulo', imagen = '$Imagen', autor = '$Autor', genero = '$Genero', editorial = '$Editorial', isbn = '$ISBN', descripcion = '$Descripcion' where id = '$id'";

    if(mysqli_query($conn, $sql)){
        header("Location: http://localhost:3000/list");
    }else{
        echo 'Los datos que has introducido, falla. Revisa <a href="index.php">formulario</a> <br />';
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

}else{
    echo '<p>Por favor, complete el <a href="index.php">formulario</a></p>';
}

?>