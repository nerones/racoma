<?php
class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //$this->load->model('news_model');
        $this->load->helper('url');
    }

    public function index()
    {
    
        $data['title'] = 'Inicio';//ucfirst($page); // Capitalize the first letter
        $data['menu'] = menu_ul('home');
        
        $this->load->view('templates/header', $data);
        //$this->load->view('templates/body-upper-banner');
        $this->load->view('home/home', $data);
        $this->load->view('templates/footer', $data);

    }
    public function view($page = 'home')
    {
        if ( ! file_exists('application/views/home/'.$page.'.php'))
        {
        // Whoops, we don't have a page for that!
        show_404();
        }
    
        $data['title'] = ucfirst($page); // Capitalize the first letter
        
        $this->load->view('templates/header', $data);
        $this->load->view('templates/body-upper-banner');
        $this->load->view('home/'.$page, $data);
        $this->load->view('templates/footer', $data);

    }
}