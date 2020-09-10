<?php
$dbh = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$dbh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);

$salle = $dbh->prepare('SELECT*FROM salle where campus="'.$_GET['site'].'"');
$salle->execute();
// $salleresult = $salle->fetch(PDO::FETCH_OBJ);

$service = $dbh->prepare('SELECT*FROM fonction');
$service->execute();
$intervenant = $dbh->prepare('SELECT*FROM kernel_bu_personnel');
$intervenant->execute();

$demandeur = $dbh->prepare('SELECT*FROM kernel_bu_personnel');
$demandeur->execute();

?>
<!-- <div class="alert alert-success" role="alert">
  This is a success alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div>
<div class="alert alert-danger" role="alert">
  This is a danger alert with <a href="#" class="alert-link">an example link</a>. Give it a click if you like.
</div> -->
<div class="modal fade" id="ModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form class="form-horizontal" method="POST" action="addEvent.php">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">Réservation</h4>
                    <button type="reset" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>

                <div class="modal-body">
                    <div class="form-row">
                        <div class="form-group col-md-6"><label for="salle">Salle : </label>
                            <select name="salle" id="salle">
                                <?php
                                while ($salleresult = $salle->fetch(PDO::FETCH_ASSOC)) {
                                    echo '<option value="' . $salleresult['id_salle'] . '">' . $salleresult['salle'] . '</option>';
                                }
                                ?>
                            </select></div>
                        <div class="form-group col-md-6"><label for="capacite">Capacité : </label><input type="number" name="capacite" id="capacite" min="1" max="50"></div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6"><label for="date">Date : </label><input type="date" name="date" id="date"></div>
                        <div class="form-group col-md-6"><label for="heuredeb">Heure de début : </label><input type="time" name="heuredeb" id="heuredeb" min="07:00" max="20:00" required></div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6"><label for=""></label></div>
                        <div class="form-group col-md-6"><label for="heurefin">Heure de fin : </label><input type="time" name="heurefin" id="heurefin" min="07:00" max="20:00" required></div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6"><label for="service">Service : </label><select name="service" id="service">
                                <?php
                                while ($serviceresult = $service->fetch(PDO::FETCH_ASSOC)) {
                                    echo '<option value="' . $serviceresult['id'] . '">' . $serviceresult['nom'] . '</option>';
                                }
                                ?>
                            </select></div>
                        <div class="form-group col-md-6"><label for="demandeur">Demandeur : </label><select name="demandeur" id="demandeur">
                                <?php
                                while ($demandeurresult = $demandeur->fetch(PDO::FETCH_ASSOC)) {
                                    echo <<<SELECT1
                                    <option value="$demandeurresult[numero]"
                                SELECT1;
                                    if ($_SESSION['id_user'] == $demandeurresult['numero']) {
                                        echo 'selected';
                                    };
                                    echo <<<SELECT2
                                    >$demandeurresult[nom] $demandeurresult[prenom1]</option>
                                SELECT2;
                                    //     echo '<option value="' . $demandeurresult['id'] .'">
                                    //     ' . $demandeurresult['nom'].' '.$demandeurresult['prenom1']. '</option>';
                                }
                                ?>

                            </select></div>
                        <!-- if($_SESSION['id_user']==$demandeurresult['numero']){. 'selected'.'} -->
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6"><label for="intervenantint">Intervenant : </label><select name="intervenantint" id="intervenantint">
                                <?php
                                while ($intervenantresult = $intervenant->fetch(PDO::FETCH_ASSOC)) {
                                    echo '<option value="' . $intervenantresult['numero'] . '"';
                                    if ($_SESSION['id_user'] == $intervenantresult['numero']) {
                                        echo 'selected';
                                    };
                                    echo '>' . $intervenantresult['nom'] . ' ' . $intervenantresult['prenom1'] . '</option>';
                                }
                                ?>

                            </select></div>
                        <div class="form-group col-md-6"><label for="intervenantext">Intervenant extérieur : </label><input type="text" name="intervenantext" id="intervenantext" placeholder="NOM Prénom"></div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6"><label for="nbparticipant">Nombre de participant : </label><input type="number" name="nbparticipant" id="nbparticipant" min="1" max="50" required></div>
                        <div class="form-group col-md-6"><label for=""></label></div>
                    </div>
                    <div class="form-group">
                        <label for="theme">Thème : </label>
                        <input type="text" class="form-control" name="theme" id="theme" required>
                    </div>
                    <div class="form-group">
                        <label for="dossierref">Dossier référent : </label>
                        <input type="text" class="form-control" name="dossierref" id="dossierref" required>
                    </div>
                    <div class="form-group">
                        <label for="public">Public accueilli : </label>
                        <input type="text" class="form-control" name="public" id="public">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-danger" data-dismiss="modal">Quitter</button>
                    <button type="submit" class="btn btn-primary">Envoyer</button>
                </div>
            </form>
        </div>
    </div>
</div>