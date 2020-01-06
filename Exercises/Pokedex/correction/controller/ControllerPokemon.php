<?php

require('core/AbstractController.php');
require('core/View.php');
require('model/Pokemon.php');

class ControllerPokemon extends AbstractController {

    /**
     * Homepage action controller
     *
     * @throws Exception
     */
    public function index() {
        $pokemon = Pokemon::getPokemon($this->request['id']);

        $this->createView([
            'pokemon' => $pokemon
        ]);
    }
}
