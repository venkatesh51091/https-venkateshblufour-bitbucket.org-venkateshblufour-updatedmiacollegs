<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Guardian_model extends CI_Model {
	
	private $table = 'student_parent';

    public function __construct() {
        parent::__construct();
        $this->current_session = $this->setting_model->getCurrentSession();
        $this->current_date = $this->setting_model->getDateYmd();
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
	public function grabData($user_cond = array())
	{
		$return_data = array();
		if(count($user_cond) > 0)
		{
			$query = $this->db->get_where($this->table,$user_cond);
			$return_data = $query->result();
		}else{
			$return_data = $this->db->get($this->table)->result();
		}
		return $return_data;
	}

    public function searchFullText($searchterm) {
        $this->db->select('student_parent.*')->from('student_parent');
        $this->db->join('students', 'student_parent.id = students.student_parent_id','left');   
		
		if($searchterm!='')
		{
			$this->db->group_start();
			$this->db->like('student_parent.guardian_name', $searchterm);
			$this->db->or_like('student_parent.father_name', $searchterm);
			$this->db->or_like('student_parent.mother_name', $searchterm);
			$this->db->group_end();			
		}
        $this->db->group_by('student_parent.id');
        $this->db->order_by('student_parent.id','DESC');
        $this->db->limit('100');
        $query = $this->db->get();
		//echo $this->db->last_query();exit;
        return $query->result_array(); 
    }
  
    public function remove($id) {
        $this->db->where('id', $id);
        $this->db->delete($this->table);
    }

    /**
     * This function will take the post data passed from the controller
     * If id is present, then it will do an update
     * else an insert. One function doing both add and edit.
     * @param $data
     */
    public function add($data) {

        if (isset($data['id'])) {
            $this->db->where('id', $data['id']);
            $this->db->update($this->table, $data); 
        } else {
            $this->db->insert($this->table, $data); 
            return $this->db->insert_id();
        }
    }

   public function getStudentsData($cond=array())
	{
		
		$sql=$this->db->select('S.*,P.*,C.*,SS.*')
				->from('students S')
				->join('student_parent P','P.id=S.student_parent_id','left')
				->join('student_session SS','SS.student_id=S.id','left')		
				->join('classes C','C.id=SS.class_id','left')							
				->where($cond)
				->group_by('S.id')
				->order_by('S.id ASC')
				->get()
		//echo $this->db->last_query();exit;
				->result();
		return $sql;
	}
   public function getParentStudents($cond=array())
	{
		
		$sql=$this->db->select('S.*,P.*,C.*,SS.*')
				->from('students S')
				->join('student_parent P','P.id=S.student_parent_id')
				->join('student_session SS','SS.student_id=S.id')		
				->join('classes C','C.id=SS.class_id')							
				->where($cond)
				->group_by('S.id')
				->order_by('S.id ASC')
				->get()
		//echo $this->db->last_query();exit;
				->result();
		return $sql;
	}
	
	public function getFeeBycategory($class_id, $session_id) {
        $this->db->select('*')->from('feemasters');
        $this->db->join('classes', 'feemasters.class_id = classes.id');
        $this->db->join('feetype', 'feemasters.feetype_id = feetype.id');
        $this->db->where('feemasters.class_id', $class_id);
        //$this->db->where('feemasters.feetype_id', $type);
        $this->db->where('feemasters.session_id', $session_id);
        $this->db->order_by('feemasters.id');
        $query = $this->db->get();
        return $query->result(); 
    }
	
	
}
