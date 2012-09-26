<?php
class Users_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
    }
     
    public function validate(){

        $username = $this->input->post('identity');
        //TODO play with md5 to store de password
        $password = $this->input->post('password');
        $password = md5($password.md5($username)); 
        $this->db->where('username', $username);
        $this->db->where('password', $password);
        $query = $this->db->get('users');

        if($query->num_rows == 1)
        {
            $row = $query->row();
            $data = array(
                    'username' => $row->username,
                    'validated' => true
                    );
            $this->session->set_userdata($data);
            return true;
        }
        return false;
    }
}

/* End of file users_model.php */
/* Location: ./application/models/ */
