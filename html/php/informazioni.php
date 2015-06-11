<?php
     include_once "util.php";
    
    //query dati istruttore
    $query1 = "SELECT * FROM informazione";

     $result=do_query($query1);
     $i=0;
     while ( $row = mysql_fetch_assoc($result) ) {
        $risposta[$row["nome"]]=$row["valore"];
        $i++;
        }  
     header("Content-Type: application/json");
     echo $_GET['callback']."(".json_encode($risposta).")";
     ?>