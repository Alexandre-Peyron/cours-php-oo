<?php
    $arme1 = [
        "nom" => "épée",
        "image" => "epee/epee1.png",
        "description" => "Une arme tranchante"
    ];
    $arme2 = [
        "nom" => "arc",
        "image" => "arc/arc1.png",
        "description" => "Une arme à distance"
    ];
    $arme3 = [
        "nom" => "hache",
        "image" => "hache/hache1.png",
        "description" => "Une arme tranchante ou un outil qui permet aussi de couper du bois"
    ];
    $arme4 = [
        "nom" => "fléau",
        "image" => "fleau/fleau1.png",
        "description" => "Une arme contondante du moyen-âge"
    ];

    $armes = [$arme1,$arme2,$arme3,$arme4];
?>

<div>
    <b>Voici toutes les armes : </b>
</div>
<?php foreach($armes as $arme){ ?>
    <div class="row align-items-center">
        <div class="col-3 text-center">
            <img src="sources/<?= $arme['image']; ?>" />
        </div>
        <div class="col-auto">
            <h2><?= $arme['nom']; ?></h2>
            <p><?=$arme['description']; ?></p>
        </div>
    </div>

<?php } ?>