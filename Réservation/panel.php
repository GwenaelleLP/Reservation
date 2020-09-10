<?php
include_once('header.php');
include_once('menuV.php');

$bdd = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

$requet = $bdd->prepare('SELECT*,s.salle  as nom_salle , f.nom as nom_prof, p.nom as nom_intervenant, p.prenom1 as prenom_intervenant
FROM resa as r, salle as s, fonction as f, kernel_bu_personnel as p
WHERE r.salle=s.id_salle AND f.id= r.service AND p.numero=r.intervenant');
$requet->execute();

?>
<style>
    .tabs:after {
        display: table;
        content: ' ';
        clear: both;
    }

    .tab-content {
        display: none;

    }

    .tab-content.active {
        display: block;
    }
</style>
<form class="form-inline">
    <div class="form-group">
        <label for="site">Choix du site : </label>
        <select name="site" id="list">
            <option value="nancy" <?php if ($_GET['site'] == 'nancy') {
                                        echo 'selected';
                                    } ?>>Nancy</option>
            <option value="metz" <?php if ($_GET['site'] == 'metz') {
                                        echo 'selected';
                                    } ?>>Metz</option>
        </select>
    </div>
</form>
<br>
<div class="tabs-content">
    <div class="tab-content active" id="pannel">
        <table class="table table-striped ">
            <thead class="thead-dark text-center">
                <tr>
                    <th rowspan="2">Salle</th>
                    <th rowspan="2">Service</th>
                    <th rowspan="2">Nb participants</th>
                    <th rowspan="2">Intervenant</th>
                    <th colspan="2" class="text-center">Date</th>
                    <th colspan="2" class="text-center">Heure</th>
                    <th rowspan="2">Boutons</th>
                </tr>
                <tr>
                    <th>Réservation</th>
                    <th>Utilisation</th>
                    <th>Début</th>
                    <th>Fin</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($resultat = $requet->fetch(PDO::FETCH_ASSOC)) {
                    $date1 = $resultat['date_resa'];
                    $dateresa = new DateTime($date1);
                    $dateresaconv = $dateresa->format('d/m/Y');

                    $date2 = $resultat['date_utilisation'];
                    $dateuti = new DateTime($date2);
                    $dateuticonv = $dateuti->format('d/m/Y');

                    $heure1 = $resultat['heure_debut'];
                    $heuredeb = new DateTime($heure1);
                    $heuredebconv = $heuredeb->format('H:i');

                    $heure2 = $resultat['heure_fin'];
                    $heurefin = new DateTime($heure2);
                    $heurefinconv = $heurefin->format('H:i');

                    echo '<tr class="';
                    if ($resultat['etat'] == 2) {
                        echo 'table-info';
                    } elseif ($resultat['etat'] == 1) {
                        echo 'table-danger';
                    }
                    echo <<<TABLE1
                    ">
                    <td>$resultat[nom_salle] </td>
                    <td>$resultat[nom_prof]</td>
                    <td>$resultat[nb_participant]</td>
                    <td>$resultat[nom_intervenant] $resultat[prenom_intervenant]</td>
                    <td>$dateresaconv</td>
                    <td>$dateuticonv</td>
                    <td>$heuredebconv</td>
                    <td>$heurefinconv</td>
                    <td><div class="btn-group" role="group" aria-label="Basic example">
                    <button onclick="annul($resultat[id_resa])" type="button" class="btn btn-outline-danger" title="Annuler la réservation"><i class="fa fa-times"></i></button>
                    <a  class="btn btn-outline-primary" title="Modifier" href="modalupdate.php?id_resa=$resultat[id_resa]" ><i class="fa fa-edit"></i></a>
                    TABLE1;
                    if ($resultat['etat'] == 2) {
                        echo '<a href="pdf.php?id=' . $resultat['id_resa'] . '"type="button" class="btn btn-outline-secondary" title="Générer le PDF"><i class="fa fa-file-pdf-o"></i></a>';
                    } elseif ($resultat['etat'] == 1) {
                        echo '<button onclick="test(' . $resultat['id_resa'] . ')" type="button" class="btn btn-outline-success" title="Valider la réservation" id="valider" name="valider" ><i class="fa fa-check"></i></button>';
                    }

                    echo <<<TABLE2
                  </div></td>
                </tr>
                TABLE2;
                } ?>
            </tbody>
        </table>
    </div>
    <?php  ?>
    <div class="tab-content" id="planning">
        <div id="calendar"> </div>
    </div>
    <?php
    // include_once('modal.php');
    // include_once('modalupdate.php') ?>
</div>
<script>
    $('#myModal').modal(options)

    /*Selection des différents onglets*/
    // var onglets = document.querySelectorAll(".tabs a");
    // var active = document.getElementsByClassName("tab-content active");
    // for (var i = 0; i < onglets.length; i++) {
    //     onglets[i].addEventListener("click", function(e) {
    //         for (var j = 0; j < active.length; j++) {
    //             var act = document.querySelector(".tab-content.active");
    //             act.classList.remove("active");
    //         }
    //         var href = this.getAttribute("href");
    //         var partie = document.querySelector(href);
    //         partie.classList.add("active");
    //     })
    // }
</script>
<script src="scriptpannel.js"></script>
<?php
include_once('footer.php');
?>