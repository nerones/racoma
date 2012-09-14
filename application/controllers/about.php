<?php
class About extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //$this->load->model('news_model');
        $this->load->helper('url');
    }

    public function index()
    {
    
        $data['title'] = 'Sobre nosotros';//ucfirst($page); // Capitalize the first letter
        $data['menu'] = menu_ul('about');
        
        $this->load->view('templates/header', $data);
        //$this->load->view('templates/body-upper-banner');
        $this->load->view('about/index', $data);
        $this->load->view('templates/footer', $data);

    }
    
}