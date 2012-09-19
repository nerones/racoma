<?php
class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //$this->load->model('news_model');
        $this->load->helper(array ('url','text'));
        $this->load->model('news_model');
        $this->load->model('programs_model');
    }

    public function index()
    {
    
        $data['title'] = 'Inicio';//ucfirst($page); // Capitalize the first letter
        $data['menu'] = menu_ul('home');
        $data['news'] = $this->news_model->get_news_limited(3,0);
        //TODO make correct method to obtain current show
        $data['current_show']= $this->programs_model->get_shows(1);
        $this->load->view('templates/header', $data);
        //$this->load->view('templates/body-upper-banner');
        $this->load->view('home/home', $data);
        $this->load->view('templates/footer', $data);

    }
    
    public function _view($page = 'home')
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