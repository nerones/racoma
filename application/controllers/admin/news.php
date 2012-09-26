<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 
 */
class News extends Admin_Controller {
	
	function __construct() {
		parent::__construct();
        $this->load->model('news_model');
	}
    
    public function create()
    {
        
        $this->load->helper('form');
        $this->load->library('form_validation');
        
        $data['title'] = 'Crear una nueva noticia';
        $data['menu'] = menu_ul('auth');
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
            $this->load->view('templates/header', $data);   
            $this->load->view('news/success');
            $this->load->view('templates/footer');
            
            //redirect('admin');
        }
    }
}






/* End of file ci.php */
/* Location: ./application/ */
