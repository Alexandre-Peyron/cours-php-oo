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
        $sql = 'SELECT P.*, group_concat(DISTINCT T.label ORDER BY T.label DESC SEPARATOR \', \') as types
                FROM pokemon AS P
                INNER JOIN pokemon_has_type as PHT ON PHT.pokemon_id = P.id
                INNER JOIN type as T ON PHT.type_id = T.id
                GROUP BY P.id, P.name';

        $query = self::createQuery($sql, self::class);

        return $query->fetchAll();
    }

    /**
     * Get one pokemon
     *
     * @param $id
     *
     * @return array
     */
    public static function getPokemon($id) {
        $sql = 'SELECT id, name FROM pokemon WHERE id = :id';

        $query = self::createQuery($sql, self::class, [
            'id' => $id
        ]);

        return $query->fetch();
    }
}