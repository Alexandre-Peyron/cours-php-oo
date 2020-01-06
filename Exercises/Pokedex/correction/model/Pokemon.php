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

        $query = self::createQuery($sql, 'Pokemon');

        return $query->fetchAll();
    }
}