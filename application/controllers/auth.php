<?php 

class Auth extends CI_Controller {
    
    function __construct() 
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('users_model');
        $this->menu = menu_ul('auth');
    }

    function index() 
    {
        if ($this->session->userdata('validated')) {
            echo 'hola admin';
        }
        redirect('/');
    }

    function login() 
    {
        if ($this->session->userdata('validated')) redirect('admin');
        $data['menu'] = $this->menu;
        
        $data['title'] = 'Ingresar como administrador';
        $this->load->helper('form');
        $this->load->library('form_validation');
        
        $this->form_validation->set_rules('identity', 'Nombre de usuario', 'required');
        $this->form_validation->set_rules('password', 'Contraseña', 'required');
        
        if ($this->form_validation->run() === FALSE)
        {
            $this->load->view('templates/header',$data);
            $this->load->view('templates/login');
            $this->load->view('templates/footer');
        }
        else
        {
            if (! $this->users_model->validate()) redirect('auth/login');
            else redirect('admin');
        }
        
        /*
        if($_POST) {   //clean public facing app input
            $identity = $this->input->post('identity', true);
            $password = $this->input->post('password', true);*/

    }


    function logout() 
    {   //Basic Ion_Auth Logout function
        $this->session->sess_destroy();
        redirect('/');
    }



}
/* End of file ci.php */
/* Location: ./application/ */