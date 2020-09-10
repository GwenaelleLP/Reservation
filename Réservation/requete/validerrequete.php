<?php

$dbh = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

$question = $dbh->prepare('UPDATE resa SET etat=:valid WHERE id_resa=:id');
$question->execute(array(
    'valid' => 2,
    'id' => $_GET['id_resa']
));

header('location: ../index.php');
