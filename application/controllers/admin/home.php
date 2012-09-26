<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * 
 */
class Home extends Admin_Controller {
	
	function __construct() {
		parent::__construct();
        $this->load->helper('url');
	}
    
    public function index()
    {
        $data['title'] = 'Vista Administrador';//ucfirst($page); // Capitalize the first letter
        $data['menu'] = menu_ul('auth');
        
        $this->load->view('templates/header', $data);
        //$this->load->view('templates/body-upper-banner');
        $this->load->view('admin/index', $data);
        $this->load->view('templates/footer', $data);
    }
}






/* End of file ci.php */
/* Location: ./application/ */
