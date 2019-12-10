<?php

abstract class AbstractModel {

    protected function executeQuery($sql, $params = null) {
        if ($params === null) {
            $result = self::getBdd()->query($sql);
        }
        else {
            $result = self::getBdd()->prepare($sql);
            $result->execute($params);
        }

        return $result;
    }

    private static function getBdd() {

        if (self::$bdd === null) {
            // Récupération des paramètres de configuration BD
            $host  = Configuration::get("adresse_de_host");
            $name  = Configuration::get("nom_de_la_base");
            $login = Configuration::get("nom_du_user");
            $pass  = Configuration::get("mot_de_passe");
            // Création de la connexion
            self::$bdd = new PDO('mysql:host='.$host.';dbname='.$name, $login, $pass, [
                    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
                ]);
        }

        return self::$bdd;
    }
}