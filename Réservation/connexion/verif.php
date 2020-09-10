<?php

$bdh = new PDO("mysql:host=localhost;dbname=siteresa;charset=utf8", "root", "");
$bdh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$bdh->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);


$login = $_POST["login"];
$password = $_POST["password"];
echo $login . " " . $password;

$query = $bdh->prepare('SELECT *,f.nom as "admin", p.numero as"id_user" FROM fonction as f, kernel_link_bu2user as b, kernel_bu_personnel as p, copixuser as c Where b.bu_id=p.numero AND b.user_id=c.id_cusr AND p.profession=f.id');
$query->execute();
$result = $query->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $results) {
    if ($password == $results['password_cusr'] && $login == $results["login_cusr"]) {
        echo " je rentre ";
        session_start();
        $_SESSION['personne'] = $login;
        $_SESSION['nom'] = $results['nom'];
        $_SESSION['prenom'] = $results['prenom1'];
        $_SESSION['id_user']=$results['id_user'];
        if ($results["admin"] == "Informaticiens(es)") {
            $_SESSION['role'] = "Admin";
            header("Location:../panel.php");
            // echo addUrlParam(array('panel'=>2)); 
        } else {
            $_SESSION['role'] = "User";
            header("Location:../calendrier.php");

        }
        // echo "Vous êtes bien connecté  ";
    } else {
        echo "Connexion echouée blabla";
        // header("location:seconnecter.php");
        //echo "rater";
    }
};

?>

