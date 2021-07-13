<?php

include_once 'connect.php';

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
 
 $query = "SELECT * FROM Libros";
 
 $stmt = $DBcon->prepare($query);
 $stmt->execute();
 
 $userData = array();
 
 while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
  
  $userData["libros"][] = $row;
 }

 header('Content-type:application/json;charset=utf-8');
 
 echo json_encode($userData);



?>