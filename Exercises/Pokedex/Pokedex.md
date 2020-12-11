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


## Etape 3 : Model

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

## Etape 4 : Le Router

Maintenant qu'on récupère nos données de manière structurée, on va commencer à mettre en place un système de routing.

Le travail du `Router` est de récupérer les paramètres passés dans l'URL et d'appeler ensuite les bons `controller`. 

Notre index.php va ressembler à ceci : 

```php
<?php

require_once('config/config.php');
require_once('core/Router.php');


$router = new Router();
$router->createRequest();

```

Et notre Router à ça : 

```php
<?php

class Router {

    /**
    * @var array
    */ 
    private $request;

    /**
     * Récupère les paramètres en GET et POST puis génère le controller associé
     *
     * @throws Exception
     */
    public function createRequest() {
        try {
            // On récupère les données en GET et en POST
            $this->request = array_merge($_GET, $_POST);

            // On crée le controller nécessaire
            $controller = $this->createController();

            // On appelle la méthode index du controller
            $controller->index();
        }
        catch (Exception $e) {
            // 404
            throw new Exception('404 - Page introuvable');
        }
    }

    /**
     * Charge le fichier et la classe du controller
     *
     * @throws Exception
     */
    private function createController() {
        // A compléter :
        // Cette méthode va récupérer la valeur "page" passée en GET
        // Avec cette valeur, elle va créer une nouvelle instance du controller correspondant
        // Exemple d'URL : localhost/index.php?page=homepage
        // Controller instancié : ControllerHomepage.php
        // Le controller est ensuite retourné pour que la méthode createRequest appelle la méthode index() du controller
    }
}

```

Et notre HomepageController.php 

```php
<?php

require('model/Pokemon.php');

class ControllerHomepage  {

    /**
     * Homepage action controller
     *
     * @throws Exception
     */
    public function index() {
        // A compléter 
        // Récupère et affiche la liste des pokémons
    }
}

```

Objectif ici, compléter les méthodes pour afficher la liste des Pokémons.