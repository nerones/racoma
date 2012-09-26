<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin_Controller extends CI_Controller {

    protected $username;
    
    public function __construct() {

        parent::__construct();

        //Check if user is in admin group
        if ( $this->session->userdata('validated') ) {
                $this->username = $this->session->userdata('username');
            //Load $the_user in all views
            $this->load->vars(array('autenticated' => $this->username));
        }
        else {
            redirect('/');
        }
    }
}




/* End of file ci.php */
/* Location: ./application/ */
