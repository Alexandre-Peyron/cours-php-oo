# Pokédex MVC

A partir de la base de données suivante : [BDD SQL](sources/pokedex.sql)

Créez une interface permettant de lister les pokémons et leurs types associés. 

Il s'agit de créer un modèle MVC en PHP, sans framework.

Tout doit être "Object".


## Etape 1 : L'architecture

A terme nous devrons avoir l'architecture suivante :

- /config
    - config.php
- /controller
    - ControllerHomepage.php
    - ControllerPokemon.php
- /core
    - AbstractModel.php
    - Router.php
    - View.php
- /model
    - Pokemon.php
- /view
    - /ControllerHomepage
        - index.php
    - /ControllerPokemon
        - index.php
- index.php

L'index à la racine sera toujours notre point d'entrée.

Nos URLs auront donc la forme suivante : 
- localhost/index.php?page=homepage
- localhost/index.php?page=pokemon&id=1


## Etape 2 : La base de données

Avec le fichier précédemment fourni créez une nouvelle BDD et importez les données.

Ajoutez les informations de connexion dans `/config/config.php`. Sous la forme suivante : 

```php
<?php

define('DB_HOST', 'localhost');
define('DB_NAME', 'pokedex');
define('DB_USER', 'root');
define('DB_PASSWORD', 'root');
```


### Etape 3 : Model

Pour cette étape, nous allons créer 2 nouveaux fichiers : 
- `/core/AbstractModel.php`
- `/model/Pokemon.php`

Le fichier `AbstractModel.php` va créer la connexion à la base de données avec PDO. 
Il va être structuré ainsi : 

```php
<?php

abstract class AbstractModel{

    protected static $bdd;

    /**
     * Get PDO connection
     *
     * @return PDO
     */
    private static function DB()
    {
        // A compléter
        // Effectue la connexion à la BDD et renvoi un objet PDO.
    }
}
```

Le fichier `Pokemon.php`, quant à lui, va étendre de `AbstractModel` et regrouper les propriétés de nos pokémons (ID, name, types);

Il sera structuré ainsi :

```php
<?php
require('core/AbstractModel.php');

class Pokemon extends AbstractModel {

    /**
     * @var int
     */
    private $id;

    /**
     * @var string
     */
    private $name;

    /**
     * @var string
     */
    private $types;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getTypes()
    {
        return $this->types;
    }

    /**
     * @param mixed $types
     */
    public function setTypes($types)
    {
        $this->types = $types;
    }

    /**
     * Get All pokemon list
     *
     * @return array
     */
    public static function getList() {
        // A compléter
        // Requête SQL avec PDO pour récupérer la liste des pokémons
        // Pour cela récupérez la connexion PDO avec self::DB() 
        // Bonus : si vous récupérer la liste des types avec, c'est bieng (mais c'est tricky, concentrez vous sur la simple liste des pokémons pour le moment) 
    }

    /**
     * Get one pokemon
     *
     * @param $id
     *
     * @return array
     */
    public static function getPokemon($id) {
        // A compléter
        // Requête SQL avec PDO pour récupérer un pokémon en fonction de l'ID qui est passé en paramètre
        // Pour cela récupérez la connexion PDO avec self::DB()
    }
}
```

Dans l'`index.php`, faites appel aux méthodes `getList` ou `getPokemon` pour afficher les données depuis la BDD.
