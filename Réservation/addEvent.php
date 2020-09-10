<?php

// error_reporting(E_ALL);

$dbh = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

// $verifexist=$dbh->prepare("SELECT * FROM resa WHERE salle=".$_POST['salle']." AND ('".$_POST['heuredeb']."' BETWEEN heure_debut AND heure_fin) AND ") ;
$verifexist = $dbh->prepare("SELECT * FROM resa WHERE salle=" . $_POST['salle'] . " AND date_utilisation =" . $_POST['date'] . " AND (heure_debut BETWEEN '" . $_POST['heuredeb'] . "' AND '" . $_POST['heurefin'] . "') AND ( heure_fin BETWEEN '" . $_POST['heuredeb'] . "' AND '" . $_POST['heurefin'] . "')");

// $verifexist=$dbh->prepare('SELECT * FROM resa WHERE salle='.$_POST['salle'].' AND (heure_debut BETWEEN "'.$_POST['heuredeb'].'" AND "'.$_POST['heurefin'].'") OR (heure_fin BETWEEN "'. $_POST['heuredeb'].'" AND "'.$_POST['heurefin'].'"');


$verifexist->execute();
// echo $verifexist;
$event = $verifexist->fetchAll();
echo "<pre>";
print_r($event);
echo "</pre>";
if (count($event) > 1) {
} else {
    $ajoutevent = $dbh->prepare('INSERT INTO resa( salle, service, nb_participant, intervenant, date_resa,date_utilisation, heure_debut,heure_fin,etat, intervenantext, theme, dos_ref, public, demandeur)
VALUES(:salle, :service, :nb_participant, :intervenant, :date_resa,:date_utilisation, :heure_debut, :heure_fin ,:etat, :intervenantext, :theme, :dossierref, :public, :demandeur)');

    $ajoutevent->execute(array(
        'salle' => $_POST['salle'],
        'service' => $_POST['service'],
        'intervenant' => $_POST['intervenantint'],
        'nb_participant' => $_POST['nbparticipant'],
        'date_resa' => date('Y-m-d'),
        'date_utilisation' => $_POST['date'],
        'heure_debut' => $_POST['heuredeb'],
        'heure_fin' => $_POST['heurefin'],
        'etat' => 1,
        'intervenantext' => $_POST['intervenantext'],
        'theme' => $_POST['theme'],
        'dossierref' => $_POST['dossierref'],
        'public' => $_POST['public'],
        'demandeur' => $_POST['demandeur']


    ));
    header('location:index.php');
}
