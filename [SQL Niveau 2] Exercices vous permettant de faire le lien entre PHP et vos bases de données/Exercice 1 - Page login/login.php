
<?php
       
        try{
            $bdd =new PDO('mysql:host=localhost; dbname=connection; charset=utf8', 'root', '');
            // Activation des erreurs PDO
            $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            // mode de fetch par défaut : FETCH_ASSOC / FETCH_OBJ / FETCH_BOTH
            $bdd->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
            } 
        catch(PDOException $e) {
                die('Erreur : ' . $e->getMessage());
            }

    //préparation de la requête et des variables
                    $sql = "INSERT INTO connexions (login,password) VALUES (:login,:password)";

                    $datas = array(':login'=>$_POST['login'], ':password'=>$_POST['password']);
                     //Execution de la requête
                try{
                            $requete = $bdd -> prepare($sql) ;
                            $requete->execute($datas) ;
                }
                catch(Exception $e){
                        // en cas d'erreur :
                        echo " Erreur ! ".$e->getMessage();
                        echo " Les datas : " ;
                        print_r($datas);
                }
?>

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Page Login </title>
</head>

<body>
    <form class="form__group" action="login.php" method="post">

        <div class="form__group">
            <label for="login" class="form__label">Login :</label>
            <input type="text" name="login" id="login" class="form__input">
        </div>

        <div class="form__group">
            <label for="password" class="form__label">Mot de passe :</label>
            <input type="text" name="password" id="password" class="form__input">
        </div>

        <div class="form__group">
            <input type="submit" value="Envoyer" name="submit" class="form__input">
        </div>

    </form>
</body>

</html>