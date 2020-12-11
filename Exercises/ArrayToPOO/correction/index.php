<?php

require_once ('model/Weapon.php');

$armes = [];
$armes[] = new Weapon(1, "épée", "Une arme tranchante", "epee/epee1.png");
$armes[] = new Weapon(2, "arc", "Une arme à distance", "arc/arc1.png");
$armes[] = new Weapon(3, "hache", "Une arme tranchante ou un outil qui permet aussi de couper du bois", "hache/hache1.png");
$armes[] = new Weapon(4, "fléau", "Une arme contondante du moyen-âge", "fleau/fleau1.png");

?>

<div>
    <b>Voici toutes les armes : </b>
</div>
<?php foreach($armes as $arme): ?>
    <div class="row align-items-center">
        <div class="col-3 text-center">
            <img src="sources/<?= $arme->getImage() ?>" />
        </div>
        <div class="col-auto">
            <h2><?= $arme->getName() ?></h2>
            <p><?=$arme->getDescription() ?></p>
        </div>
    </div>
<?php endforeach; ?>