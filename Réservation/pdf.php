<?php
$bdd = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

$requet = $bdd->prepare('SELECT*,s.salle  as nom_salle , f.nom as nom_prof, p.nom as nom_intervenant, p.prenom1 as prenom_intervenant
FROM resa as r, salle as s, fonction as f, kernel_bu_personnel as p
WHERE r.salle=s.id_salle AND f.id= r.service AND p.numero=r.intervenant And id_resa=' . $_GET['id']);
$requet->execute();
$resultat = $requet->fetch(PDO::FETCH_ASSOC);
$heure1 = $resultat['heure_debut'];
$heuredeb = new DateTime($heure1);
$heuredebconv = $heuredeb->format('H:i');

$heure2 = $resultat['heure_fin'];
$heurefin = new DateTime($heure2);
$heurefinconv = $heurefin->format('H:i');

$date2 = $resultat['date_utilisation'];
// $dateuti = new DateTime($date2);
// $dateuticonv = $dateuti->format('F j');

setlocale (LC_TIME, 'fr','fr_FR','fr_FR@euro','fr_FR.utf8','fr-FR','fra');
$dateuticonv = ucfirst(strftime("%A %d %B",strtotime($date2)));


require("fpdf/fpdf.php");
$pdf = new FPDF("L", "pt", "A4");
$pdf->AddPage();
$pdf->SetFont('Arial', '', 22);
$pdf->Ln(120);
$pdf->Cell(0, 0,  'Salle : ' . $resultat['nom_salle'], 0, 2, 'C');
$pdf->Ln(50);
$pdf->ln(20);
$pdf->Cell(0, 0, $dateuticonv . ' de ' . $heuredebconv . ' - ' . $heurefinconv, 0, 2, 'C');
$pdf->Ln(50);
$pdf->SetFont('Arial', 'B', 22);

$pdf->Cell(0, 50, iconv('UTF-8', 'windows-1252', $resultat['theme']), 1, 2, 'C');
$pdf->Ln(50);
$pdf->SetFont('Arial', 'I', 20);

$nominter = 'Intervenant : ' . $resultat['nom_intervenant'] . ' ' . $resultat['prenom_intervenant'];
$nominter = iconv('UTF-8', 'windows-1252', $nominter);
$pdf->Cell(0, 0, $nominter, 0, 2, 'C');
$pdf->Ln(50);

$pdf->Output("resa_salle_$resultat[nom_salle]_$resultat[date_utilisation]_$resultat[nom_intervenant].pdf", 'D');
// header("location:index.php");