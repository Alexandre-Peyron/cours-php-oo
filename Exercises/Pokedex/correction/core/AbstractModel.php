<?php

abstract class AbstractModel{

    protected static $bdd;

    /**
     * Create query object
     *
     * @param       $sql
     * @param       $classNameObject
     * @param array $params
     *
     * @return bool|PDOStatement
     */
    protected static function createQuery($sql, $classNameObject, $params = [])
    {
        $query = self::DB()->prepare($sql);
        $query->setFetchMode(PDO::FETCH_CLASS, $classNameObject);
        $query->execute($params);

        return $query;
    }

    /**
     * Get PDO connection
     *
     * @return PDO
     */
    private static function DB()
    {
        if (self::$bdd === null) {
            // Création de la connexion
            self::$bdd = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASSWORD, [
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
            ]);
        }

        return self::$bdd;
    }
}