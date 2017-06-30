<?php
session_start();
?>
<!DOCTYPE html>

<html>

<head>
  <title>Formulaire</title>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
</head>

<body>
  <h1>Formulaire d'ajout d'un participant</h1>

  <form action="index.php" method="get">
    <p>
		Prénom : <input type="text" name="prenom" required />  
		Nom : <input type="text" name="nom" required /> 
		<input type="submit" value="Valider" />
	</p>
  </form>

  <br/>
  <h1>Liste des participants présents</h1>
  <?php
  // récupération dans la session de la liste des participants, création si premier appel
  $participants = array();
  if(!isset($_SESSION['participants'])){
    $_SESSION['participants'] = $participants;
  } else {
	$participants = $_SESSION['participants'];
  }
  
  // effacement de la liste si le lien supprimer a été cliqué
  if(isset($_GET["suppr"])) {
    $participants = array();
	$_SESSION['participants'] = $participants;
  }
  
  // ajout d'un participant dans la liste
  if(isset($_GET["prenom"]) && $_GET["prenom"] != "" && isset($_GET["nom"]) && $_GET["nom"] != "") {
	$strPart = $_GET["prenom"] . " " . strtoupper($_GET["nom"]);
	//plantage forcé si déjà dans la liste
	if (in_array($strPart, $participants)) {
        $plantage = 42 / 0;
		$participants = array();
    } else {
		array_push($participants, $strPart);
	}
  }
  
  // sauvegarde de la liste dans la session
  $_SESSION['participants'] = $participants;
  
  // affichage de la liste
  echo "<table border='1' cellpadding='5'>\n";
  foreach ($participants as &$value) {
    echo "<tr><td>". $value . "</td></tr>\n";
  }
  if(count($participants) == 0) {
	echo "<tr><td>Pas de participant pour l'instant</td></tr>\n";
  }
  echo "</table>";
  ?>
  <br/><a href="index.php?suppr">Suprimmer la liste</a>
</body>

</html>