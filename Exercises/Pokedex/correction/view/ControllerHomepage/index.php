<?php
    require('view/Layout/header.php');
?>

<h1>Pokédex</h1>

<table>
    <thead>
        <tr>
            <td>ID</td>
            <td>Nom</td>
        </tr>
    </thead>
    <tbody>
        <?php foreach($pokemons as $pokemon) : ?>
            <tr>
                <td><?php echo $pokemon->getId(); ?></td>
                <td>
                    <a href="/pokemon?id=<?php echo $pokemon->getId(); ?>">
                        <?php echo $pokemon->getName(); ?>
                    </a>
                </td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>

<?php
    require('view/Layout/footer.php');
?>