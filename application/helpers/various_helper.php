<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

function convert_to_days($param = FALSE)
{
    /*if ($param === FALSE) 
    {
      
    }*/
    $days_cod = explode(',', $param);
    $days_as_string = '';
    $days = array('L','M','M','J','V','S','D' ); 
    for ($i=0; $i < 7 ; $i++) 
    { 
        if ($days_cod[$i] === '1') 
        {
           $days_as_string .= $days[$i].', '; 
        }
    }
    return $days_as_string;
    
}



/* End of file ci.php */
/* Location: ./application/ */
