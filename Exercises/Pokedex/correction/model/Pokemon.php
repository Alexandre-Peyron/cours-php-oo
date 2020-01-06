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
     * Get All pokemon list
     *
     * @return array
     */
    public static function getList() {
        $sql = 'SELECT id, name FROM pokemon ORDER BY id';

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