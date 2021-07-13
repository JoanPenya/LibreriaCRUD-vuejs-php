<?php

$DBhost = "localhost";
 $DBuser = "root";
 $DBpass = "1234";
 $DBname = "biblioteca";

 $conn = new mysqli('localhost', 'root', '1234', 'biblioteca');
 
 try{
  
  $DBcon = new PDO("mysql:host=$DBhost;dbname=$DBname",$DBuser,$DBpass);
  $DBcon->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
 }catch(PDOException $ex){
  
  die($ex->getMessage());
 }
?>