<?php
class Broadcasters_programs_model extends CI_Model{
        
    public function __construct()
    {
        $this->load->database();
        #$this->load->helper("url");
    }
    
    public function get_broadcasters($program_id = FALSE)
    {
        if ($program_id === FALSE) 
        {
            return FALSE;
        }
        
        $this->db->select('*');
        $this->db->from('broadcasters');
        $this->db->join('broadcasters_programs', 'broadcasters.id = broadcasters_programs.broadcaster_id', 'inner');
        $this->db->where('program_id',$program_id);
        $query = $this->db->get();

        return $query->result_array();
    }
}

/* End of file broadcasters_programs_model.php */
/* Location: ./application/models/ */