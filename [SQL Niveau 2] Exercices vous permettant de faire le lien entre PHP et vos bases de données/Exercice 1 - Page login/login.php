
<?php
       $login = htmlspecialchars($_POST["login"]);
       $isValidLogin = !empty($login);
   
       $password = htmlspecialchars($_POST["password"]);
       $isValidPassword = !empty($password);
   
       $isValidAll = $isValidLogin && $isValidPassword;
   
       if (isset($_POST["submit"])) {
            if ($isValidAll){
                $login = $_POST['login'];
                $password = $_POST['password'];
                $base = new PDO('mysql:host=localhost;dbname=connection;charset=utf8', 'root', '');
                $sql = "INSERT INTO Connexions( login,password)VALUES('$login','$password')"; 
                $base -> query($sql);
            }
       else
        {echo " Les champs sont vides ! ";}
    
    }
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