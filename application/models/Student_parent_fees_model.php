<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');


class Student_parent_fees_model extends CI_Model {



    public function __construct() {

        parent::__construct();

		$this->table = "student_parent_fees";
		
        $this->current_session = $this->setting_model->getCurrentSession();

        $this->current_date = $this->setting_model->getDateYmd();

    }



   
    public function remove($id) {

        $this->db->where('id', $id);

        $this->db->delete($this->table);

    }
	
	public function deleteData($del_cond=array())
	{
		$this->db->where($del_cond);
		$this->db->delete($this->table);
	}



    public function add($data) {

        if (isset($data['id'])) {

            $this->db->where('id', $data['id']);

            $this->db->update($this->table, $data);

        } else {

            $this->db->insert($this->table, $data); 

            return $this->db->insert_id();

        }

    }

	public function updateData($data,$condition)
	{
		$this->db->update($this->table, $data, $condition);
	}

	public function grabData($user_cond = array(),$limit=0,$offset=0)
	{
		$return_data = array();
		if(count($user_cond) > 0)
		{
			if($limit>0){
				$this->db->limit($limit, $offset);
			}
			$this->db->order_by('id','DESC');
			$query = $this->db->get_where($this->table,$user_cond);
			$return_data = $query->result();
		}
		return $return_data;
	}

	
	public function getData($user_cond = array())
	{
		$return_data = array();
		if(count($user_cond) > 0)
		{
			$query = $this->db->get_where($this->table,$user_cond);
			$return_data = $query->row();
		}
		return $return_data;
	}

}

