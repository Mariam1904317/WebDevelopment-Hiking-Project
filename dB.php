<?php
 try{
 $conn = mysqli_connect("localhost", "root", "", "hiking");

 }catch(Exception $ex){
     echo "error";
 }
 ?>