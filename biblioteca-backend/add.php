<?php

include_once 'connect.php';

if (isset($_POST["title"], $_POST["img"], $_POST["author"], $_POST["genre"], $_POST["editorial"], $_POST["isbn"], $_POST["description"]) and $_POST["title"]!="" and $_POST["img"]!="" and $_POST["author"]!="" and $_POST["genre"]!="" and  $_POST["editorial"]!="" and $_POST["isbn"]!="" and $_POST["description"]!="" ){

$Titulo = $_POST["title"];
$Imagen = $_POST["img"];
$Autor = $_POST["author"];
$Genero = $_POST["genre"];
$Editorial = $_POST["editorial"];
$ISBN = $_POST["isbn"];
$Descripcion = $_POST["description"];

$sql = "insert into Libros (titulo, imagen, autor, editorial, genero, isbn, descripcion) values ('$Titulo', '$Imagen', '$Autor', '$Editorial', '$Genero', '$ISBN', '$Descripcion');";

    if(mysqli_query($conn, $sql)){
        header("Location: http://localhost:3000/add");
    }else{
        echo 'Los datos que has introducido, falla. Revisa <a href="index.php">formulario</a> <br />';
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

} else {
    echo 'Faltan datos para introducir la información del libro, vuelve a introducirlos';
}

?>