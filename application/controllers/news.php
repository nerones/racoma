<?php
class News extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('news_model');
        $this->load->helper('url');
        $this->menu = menu_ul('news');
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
    
    public function create()
    {
        $this->load->helper('form');
        $this->load->library('form_validation');
        
        $data['title'] = 'Create a news item';
        
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('content', 'Texto', 'required');
        
        if ($this->form_validation->run() === FALSE)
        {
            $this->load->view('templates/header', $data);   
            $this->load->view('news/create');
            $this->load->view('templates/footer');
            
        }
        else
        {
            $this->news_model->set_news();
            $this->load->view('news/success');
        }
    }
}