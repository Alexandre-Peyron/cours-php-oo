<?php

abstract class AbstractController {

    protected $request;

    abstract public function index();

    /**
     * Create view with data
     *
     * @param array $data
     *
     * @throws Exception
     */
    protected function createView($data = [])
    {
        $controllerClass = get_class($this);

        try {
            $view = new View($controllerClass);
        }
        catch(Exception $e) {
            throw new Exception('No view');
        }

        $view->createView($data);
    }

    /**
     * Setter for request object
     *
     * @param $request
     */
    public function setRequest($request)
    {
        $this->request = $request;
    }
}
