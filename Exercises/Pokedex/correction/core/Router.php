<?php

class Router {

    private $request;

    /**
     * Récupère les paramètres en GET et POST puis génère le controller associé
     *
     * @throws Exception
     */
    public function createRequest() {
        try {
            $this->request = array_merge($_GET, $_POST);

            $controller = $this->createController();

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
     * @return string
     * @throws Exception
     */
    private function createController() {
        $controller = 'Homepage';

        if (isset($this->request['page']) && $this->request['page'] !== '') {
            $controller = $this->request['page'];
        }

        $controller = ucfirst(strtolower($controller));
        $controllerClass = 'Controller' . $controller;
        $controllerFile = 'Controller/' . $controllerClass . '.php';


        if (file_exists($controllerFile)) {
            // Instanciation du contrôleur adapté à la requête
            require($controllerFile);

            $controller = new $controllerClass();

            $controller->setRequest($this->request);

            return $controller;
        }
        else {
            throw new Exception('Fichier ' . $controllerFile . ' introuvable');
        }
    }
}
