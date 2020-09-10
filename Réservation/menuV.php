    <div class="col-lg-2 profil">
        <!-- col-sm-auto -->
        <h4><?php
            echo strtoupper($_SESSION['nom']) . ", " . $_SESSION['prenom'];
            ?>


        </h4><br>
       
        <?php
        if ($_SESSION["role"] == "Admin") {

            echo '<div class="btn-group btn-group-toggle" data-toggle="buttons">
                    <button class="btn btn-outline-info" id="pan" name="admin" value="pannel">Pannel</button>
                    <button class="btn btn-outline-info" id="pla" name="admin" value="planning">Planning</button>
                </div>';
        }
        ?>
        <br><br>

        <div class="legende">
            <p class=labellegende>Légende :</p>
            <div class="legendes">
                <div class=lignelegende>
                    <div class="carreorange">
                    </div>
                    <p>Salle Demandée</p>
                </div>
                <div class=lignelegende>
                    <div class="carrerouge">
                    </div>
                    <p>Salle Réservée</p>
                </div>
            </div>

        </div>


        <div id="littlecalendar"></div>