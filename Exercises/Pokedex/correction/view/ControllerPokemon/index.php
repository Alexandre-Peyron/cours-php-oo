<?php
    require('view/Layout/header.php');
?>

<h1><?php echo $pokemon->getName(); ?></h1>

<span>Numéro : <?php echo $pokemon->getId(); ?></span>

<p>Une description</p>

<a href="/">Retour à la liste</a>

<br>
<br>

<?php
    require('view/Layout/footer.php');
?>