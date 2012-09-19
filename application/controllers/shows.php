<?php
class Shows extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        //$this->load->model('news_model');
        $this->load->model('programs_model');
        
        $this->load->helper(array ('url','various'));
        $this->menu = menu_ul('shows');
    }

    public function index()
    {
    
        $this->load->helper(array ('text'));    
        $data['title'] = 'Programas';//ucfirst($page); // Capitalize the first letter
        $data['menu'] = $this->menu;
        $data['shows'] = $this->programs_model->get_shows();
        $this->load->view('templates/header', $data);
        //$this->load->view('templates/body-upper-banner');
        $this->load->view('shows/index', $data);
        $this->load->view('templates/footer', $data);

    }
    
    public function view($id)
    {
        $data['show'] = $this->programs_model->get_shows($id);
        if (empty($data['show']))
        {
            show_404();
        }
        $this->load->model('broadcasters_programs_model');
        $data['broadcasters'] = $this->broadcasters_programs_model->get_broadcasters($id);

        $data['title'] = $data['show']['name'];
        $data['menu'] = $this->menu;
        $this->load->view('templates/header', $data);
        $this->load->view('shows/view', $data);
        $this->load->view('templates/footer');
    }
}