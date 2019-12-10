<?php

require('core/AbstractController.php');
require('core/View.php');

class ControllerHomepage extends AbstractController {

    /**
     * Homepage action controller
     *
     * @throws Exception
     */
    public function index() {
        $this->createView();
    }
}
