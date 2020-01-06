<?php

require('core/AbstractController.php');
require('core/View.php');
require('model/Pokemon.php');

class ControllerHomepage extends AbstractController {

    /**
     * Homepage action controller
     *
     * @throws Exception
     */
    public function index() {
        $pokemons = Pokemon::getList();

        $this->createView([
            'pokemons' => $pokemons
        ]);
    }
}
