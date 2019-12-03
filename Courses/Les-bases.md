# Les Bases

On va parler ici des notions de bases de la programmation orientée objet. Notre langage support est le PHP mais cela s'adapte à la plupart des langages modernes.


### Les classes

Pour créer un nouvel objet en PHP, on définit ce qu'on appelle une `class` et cela se déclare de la manière suivante :

```php
// Pokemon.php
<?php

class Pokemon {
  // Ici on va définir toutes les propriétés et méthodes de notre objet
}
?>
```

### Les Propriétés

Les propriétés correspondent aux caractéristiques de notre objet.

Dans notre cas, un pokémon peut être définit par un nom, un type, une force/défense/vitesse...

On va définir tout ça dans notre class.

```php
// Pokemon.php
<?php

class Pokemon {
    
    public $name = 'Pikachu';
    
    public $type = 'Electrique';

    public $force = 32;

}
?>
```

### Les Instances

Maintenant qu'on a définit ce qu'est un pokémon, on souhaite l'utiliser dans notre code.

```php
// index.php
<?php
require("Pokemon.php");

$pikachu = new Pokemon();

echo $pikachu->name . " à toi !";

?>
```

Ici nous avons créé une nouvelle instance de Pikachu, mais notre class nous permet d'en créer plusieurs.

```php
// index.php
<?php
require("Pokemon.php");

$pokemon1 = new Pokemon();
$pokemon2 = new Pokemon();
$pokemon3 = new Pokemon();

echo sprintf('%s, %s et %s à vous', $pokemon1->name, $pokemon2->name, $pokemon3->name);
// Picachu, Picachu et Picachu à vous !

?>
```

### Le Constructeur

Notre problématique ici, c'est que tous les pokémons qu'on va créer sont sera des pikachu. C'est pas terrible.

C'est ici qu'intervient le constructeur, il va nous permettre de définir les propriétés à la création d'un nouvel objet.

On modifie notre class ainsi : 

```php
// Pokemon.php
<?php

class Pokemon {
    
    public $name;
    
    public $type;

    public $force;

    public function __construct($name, $type, $force) {
        $this->name = $name;
        $this->type = $type;
        $this->force = $force;
    }
}
?>
```

et notre index.php de cette manière

```php
// index.php
<?php
require("Pokemon.php");

$pokemon1 = new Pokemon('Pikachu', 'Electrique', 32);
$pokemon2 = new Pokemon('Carapuce', 'Eau', 31);
$pokemon3 = new Pokemon('Salamèche', 'Feu', 33);

echo sprintf('%s, %s et %s à vous', $pokemon1->name, $pokemon2->name, $pokemon3->name);
// Picachu, Carapuce et Salamèche à vous !

?>
```

Voilà, à présent chaque nouvelle instance de nos pokémons à bien ses caractéristiques propres.

### Les Méthodes

Les méthodes sont des `functions` mais définit au sein de notre class.

```php
// Pokemon.php
<?php

class Pokemon {
    
    public $name;
    
    public $type;

    public $force;

    public function __construct($name, $type, $force) {
        $this->name = $name;
        $this->type = $type;
        $this->force = $force;
    }

    public function attaque() {
        echo 'Le Pokémon attaque !';
    }
}
?>
```

Et on l'utilise de cette manière sur l'instance de notre objet : 

```php
// index.php
<?php
require("Pokemon.php");

$pika = new Pokemon('Pikachu', 'Electrique', 32);

$pika->attaque();
// Le Pokémon attaque !

?>
```

### Le mot clé $this

Au sein de notre class, nous allons avoir besoin d'accéder aux propriétés et méthodes de notre objet.

Pour cela, on utilise le mot clé `$this`. Modifions notre méthode "attaque" pour indiquer quel pokémon attaque et les dégats infligés.

```php
// Pokemon.php
<?php

class Pokemon {
    
    public $name;
    
    public $type;

    public $force;

    public function __construct($name, $type, $force) {
        $this->name = $name;
        $this->type = $type;
        $this->force = $force;
    }

    public function attaque() {
        echo sprintf('%s attaque et inflige %s points de dégats !', $this->name, $this->force);
    }
}
?>
```

et dans l'index :

```php
// index.php
<?php
require("Pokemon.php");

$pika = new Pokemon('Pikachu', 'Electrique', 32);

$pika->attaque();
// Pikachu attaque et inflige 32 points de dégats !

?>
```

### Public, Private, Protected

Au sein de notre class, nos propriétés et méthodes ont une portée.

Pour le moment, on a tout définit à public. Ce qui signifie que au sein de l'object ou sur chacune des instances, on peut modifier les différentes valeurs.

Exemple : 

```php
// index.php
<?php
require("Pokemon.php");

$pika = new Pokemon('Pikachu', 'Electrique', 32);

$pika->name = "Salamèche";
// On a maintenant une Salamèche de type électrique, c'est n'importe quoi.


?>
```

Pour éviter ces problèmes, et mieux organiser notre code, on peut limiter ces changements : 

```php
// Pokemon.php
<?php

class Pokemon {
    
    private $name;
    
    private $type;

    private $force;

    public function __construct($name, $type, $force) {
        $this->name = $name;
        $this->type = $type;
        $this->force = $force;
    }

    public function attaque() {
        echo sprintf('%s attaque et inflige %s points de dégats !', $this->name, $this->force);
    }
}
?>
```
A présent, les propriétés sont définissables que dans le constructeur et plus à l'extérieur de la class.


### Les Getters

Si je souhaite pouvoir récupérer la valeur d'une propriété à l'extérieux de la class, sans pouvoir la modifier. Comment je fais ?

C'est ici que les getter (accesseur en français) interviennent.

Il s'agit de méthode public renvoyant la valeur d'une propriété.

```php
// Pokemon.php
<?php

class Pokemon {
    
    private $name;
    
    private $type;

    private $force;

    public function __construct($name, $type, $force) {
        $this->name = $name;
        $this->type = $type;
        $this->force = $force;
    }

    public function getName() {
        return $this->name;
    }

}
?>
```

et dans l'index


```php
// index.php
<?php
require("Pokemon.php");

$pika = new Pokemon('Pikachu', 'Electrique', 32);


echo sprintf('Mon Pokémon est un %s', $pika->getName());

?>
```

On dit que la propriété `name` est en lecture seule.

### Les setters

Dans la même optique, il est possible de créer des méthodes pour modifier la valeur d'une propriété.

On les appelle les setter (mutateurs en français).

Ils peuvent servire dans le cas où on souhaite faire un traitement en plus de la simple modification de valeur.
 
 
 
```php
// Pokemon.php
<?php

class Pokemon {
   
    private $force;

    public function setForce($force) {
        if (!is_int($force)) {
            throw new Exception('$force doit être un nombre entier');
        }

        $this->force = $force;

        return $this;
    }

}
?>
```

Ainsi le code suivant génère une erreur : 

```php
// index.php
<?php
require("Pokemon.php");

$pika = new Pokemon('Pikachu', 'Electrique', 32);

$pika->setForce('Puissant');

?>
```