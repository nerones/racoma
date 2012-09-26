<?php
class News extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('news_model');
        $this->load->helper('url');
        $this->menu = menu_ul('news');
        $this->load->library('session');
        if ($this->session->userdata('validated')) 
        { 
          $this->load->vars( array('autenticated' => $this->session->userdata('username')) );  
        }
    }

    public function index()
    {
        $this->load->helper('text');
        $this->load->library('pagination');
        

        $config['base_url'] = site_url().'/news/';
        $config['total_rows'] = $this->news_model->count_news();
        $config['per_page'] = 4; 
        $config['uri_segment'] = 2;
        $config['full_tag_open'] = "<span class='pagination'>";
        $config['full_tag_close'] = '</span>';
        $this->pagination->initialize($config); 
       
        $data['title'] = 'Archivo de noticias';
        $data['links'] = $this->pagination->create_links();
        $data['menu'] = menu_ul('news');
        $page = ($this->uri->segment(2)) ? $this->uri->segment(2) : 0;
        $data['news'] = $this->news_model->get_news_limited($config['per_page'],$page);
        
        $this->load->view('templates/header', $data);
        $this->load->view('news/index', $data);
        $this->load->view('templates/footer');
    }

    public function view($id)
    {
        $data['news_item'] = $this->news_model->get_news($id);
        if (empty($data['news_item']))
        {
            var_dump($id);
            echo'here';
            show_404();
        }
    
        $data['title'] = $data['news_item']['title'];
        $data['menu'] = $this->menu;
    
        $this->load->view('templates/header', $data);
        $this->load->view('news/view', $data);
        $this->load->view('templates/footer');
    }
    
}