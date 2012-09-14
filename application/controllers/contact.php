<?php
class Contact extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //$this->load->model('news_model');
        $this->load->helper('url');
    }

    public function index()
    {
    
        $data['title'] = 'Contacto';//ucfirst($page); // Capitalize the first letter
        $data['menu'] = menu_ul('contact');
        
        $this->load->view('templates/header', $data);
        //$this->load->view('templates/body-upper-banner');
        $this->load->view('contact/index', $data);
        $this->load->view('templates/footer', $data);

    }

}