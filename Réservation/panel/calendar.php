<?php
include_once('../header.php');
include_once('../menuV.php');

$bdd = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

$requet = $bdd->prepare('SELECT*,s.salle  as nom_salle , f.nom as nom_prof, p.nom as nom_intervenant, p.prenom1 as prenom_intervenant
FROM resa as r, salle as s, fonction as f, kernel_bu_personnel as p
WHERE r.salle=s.id_salle AND f.id= r.service AND p.numero=r.intervenant');
$requet->execute();
?>
<form class="form-inline">
    <div class="form-group">
        <label for="site">Choix du site :  </label>
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


<div class="tab-content" id="planning">
        <div id="calendar"> </div>
    </div>
    <?php include_once('../modal.php'); ?>

<script src="../scriptpannel.js"></script>
<?php
include_once('../footer.php');
?>