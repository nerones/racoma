<?php
class News_model extends CI_Model {

    public function __construct()
    {
        $this->load->database();
        #$this->load->helper("url");
    }
    
    public function count_news()
    {
        return $this->db->count_all('news');
    }
    
    public function get_news_limited($limit, $start) 
    {
          $this->db->limit($limit, $start);
          $query = $this->db->get('news');
   
          if ($query->num_rows() > 0) return $query->result_array();
          return false;
    }
    
    public function get_news($id = FALSE)
    {
        if ($id === FALSE)
            {
                $query = $this->db->get('news');
                return $query->result_array();
            }
        
        $query = $this->db->get_where('news', array('id' => $id));
        return $query->row_array();
    }
    
    public function set_news()
    {
        $this->load->helper('url');
        
        $slug = url_title($this->input->post('title'), 'dash', TRUE);
        
        $data = array(
            'title' => $this->input->post('title'),
            'user_id' => 1,
            'content' => $this->input->post('content')
        );
        
        return $this->db->insert('news', $data);
    }
}