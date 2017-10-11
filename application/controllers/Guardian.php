<?php

ini_set('display_errors',1);

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
class Guardian extends Admin_Controller {
	
    function __construct() {
        parent::__construct();
        $this->load->library('smsgateway');
        $this->load->helper('file');
        $this->lang->load('message', 'english');
        $this->role;
        $this->load->model('guardian_model');
    }

    function index() {
        $data['title'] = 'Guardian List';
        $student_result = $this->guardian_model->grabData();
        $data['guardianlist'] = $student_result;
        $this->load->view('layout/header', $data);
        $this->load->view('guardian/studentList', $data);
        $this->load->view('layout/footer', $data);
    }


    function view($id) 
	{
		$this->load->model('student_parent_fees_model');
        $data['title'] = 'Guardian Details';
        $guardian =  $this->guardian_model->getData(['id'=>$id]);
		if(!empty($guardian))
		{
			$data['guardian'] = $guardian;		
		
			$student_list =  $this->guardian_model->getStudentsData(['S.student_parent_id'=>$id]);
			$data['student_list'] = $student_list;
			$student_due_fee = array();
			if(!empty($student_list))
			{
				$this->load->model('student_model');
				
				foreach($student_list as $student)
				{
					$due_fee['student_data'] = (array)$student;
					$due_fee['student_fee'] = $this->studentfee_model->getDueFeeBystudent($student->class_id, $student->section_id, $student->student_id);
					$student_due_fee[] = $due_fee;
				}
			}
			
			$guardian_fees =  $this->student_parent_fees_model->grabData(['student_parent_id'=>$id]);
			
			//$student_due_fee = call_user_func_array('array_merge', $student_due_fee);
			//echo "<pre>";print_r($guardian_fees);exit;
			$data['student_due_fee'] = $student_due_fee;
			$data['guardian_fees'] = $guardian_fees;
			
			
			$this->load->view('layout/header', $data);
			$this->load->view('guardian/guardianShow', $data);
			$this->load->view('layout/footer', $data);
		}else{
			redirect(base_url('guardian/search'));
		}
        
    }

    function invoice($id) 
	{
		$this->load->model('student_parent_fees_model');
		$this->load->model('student_wise_fee_model');
        $data['title'] = 'Guardian Invoice';
		
		$guardian_fee =  $this->student_parent_fees_model->getData(['id'=>$id]);
		if(!empty($guardian_fee))
		{			
			$data['guardian_fee'] = $guardian_fee;		
			$guardian =  $this->guardian_model->getData(['id'=>$guardian_fee->student_parent_id]);
			$data['guardian'] = $guardian;		
			
			$student_wise_fees =  $this->student_wise_fee_model->grabFeeData(['SF.parent_fee_id'=>$id]);
			$data['student_wise_fees'] = $student_wise_fees;		
			/* echo "<pre>";print_r($student_wise_fees);exit; */
			$this->load->view('layout/header', $data);
			$this->load->view('guardian/guardianInvoiceShow', $data);
			$this->load->view('layout/footer', $data);
		}else{
			redirect(base_url('guardian/search'));
		}
	}
	
    function printFees() 
	{
        $data = array('payment' => "0");
        $data['receipt_no'] = $this->admin_model->addReceipt($data);
        //$record = $this->input->post('data');
		
        $setting_result = $this->setting_model->get();
        $data['settinglist'] = $setting_result;
		$guardian_id = $this->input->post('guardian_id');
        $guardian =  $this->guardian_model->getData(['id'=>$guardian_id]);
        $data['guardian'] = (array)$guardian;		
		
		$this->load->model('student_parent_fees_model');
		$guardian_fee =  $this->student_parent_fees_model->getData(['student_parent_id'=>$guardian_id]);
		$data['guardian_fee'] = $guardian_fee;
		
		$this->load->model('student_wise_fee_model');
        $student_wise_fees =  $this->student_wise_fee_model->grabFeeData(['SF.parent_fee_id'=>$guardian_fee->id]);
		$data['student_wise_fees'] = $student_wise_fees;
        $this->load->view('print/printFeesGuardian', $data);
    }
	
    function create($id=0) {
        $this->session->set_userdata('top_menu', 'Guardian Information');
        $this->session->set_userdata('sub_menu', 'guardian/create');
        $genderList = $this->customlib->getGender();
        $data['genderList'] = $genderList;
		if($id>0)
		{			
			$data['title'] = 'Edit Guardian';
			$data['id'] = $id;
			$guardian = $this->guardian_model->getData(['id'=>$id]);
			$data['guardian'] = $guardian;	
		}else{			
			$data['title'] = 'Add Guardian';
			$data['title_list'] = 'Recently Added guardian';
		}		
		
        $session = $this->setting_model->getCurrentSession();		
		
        $this->form_validation->set_rules('father_name', 'Father Name', 'trim|required|xss_clean');
        $this->form_validation->set_rules('mother_name', 'Mother Name', 'trim|required|xss_clean');
        $this->form_validation->set_rules('guardian_name', 'Guardian Name', 'trim|required|xss_clean');
        $this->form_validation->set_rules('guardian_is', 'If Guardian', 'trim|required|xss_clean');
        $this->form_validation->set_rules('guardian_phone', 'Guardian Phone', 'trim|required|xss_clean');
		//$this->form_validation->set_rules('file', 'Image', 'callback_handle_upload');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layout/header', $data);
            $this->load->view('guardian/guardianCreate', $data);
            $this->load->view('layout/footer', $data);
        } else {
			
            $ins_data = array(
                'guardian_is' => $this->input->post('guardian_is'),
                'father_name' => $this->input->post('father_name'),
                'father_phone' => $this->input->post('father_phone'),
                'father_occupation' => $this->input->post('father_occupation'),
                'mother_name' => $this->input->post('mother_name'),
                'mother_phone' => $this->input->post('mother_phone'),
                'mother_occupation' => $this->input->post('mother_occupation'),
                'guardian_occupation' => $this->input->post('guardian_occupation'),
                'guardian_name' => $this->input->post('guardian_name'),
                'guardian_email' => $this->input->post('guardian_email'),
                'guardian_relation' => $this->input->post('guardian_relation'),
                'guardian_phone' => $this->input->post('guardian_phone'),
                'guardian_address' => $this->input->post('guardian_address'),
                'is_active' => 'yes',
            );
			if($id>0)
			{
			 $ins_data['id'] = $id;
			}
			//print_r($ins_data);exit;
            $insert_id = $this->guardian_model->add($ins_data);
			//die($insert_id);
			if($insert_id)
			{
				$user_password = $this->role->get_random_password(6,6,false,true,false);
				$data_guardian_login = array(
					'username' => $this->parent_login_prefix . $insert_id,
					'password' => $user_password,
					'user_id' => $insert_id,
					'role' => $this->parent_login_prefix,
				);		
				
				$this->user_model->add($data_guardian_login);
			}
			if($id>0)
			{
				$this->session->set_flashdata('msg', '<div class="alert alert-success text-left">Guardian Record Updated successfully</div>');
			}else{
				$this->session->set_flashdata('msg', '<div class="alert alert-success">Guardian added Successfully</div>');
			}
            redirect('guardian/search');
        }
    }


    function search() {
        $this->session->set_userdata('top_menu', 'Guardian Information');
        $this->session->set_userdata('sub_menu', 'guardian/search');
        $data['title'] = 'guardian Search';
		
            $search = $this->input->post('search');
            $search_text = $this->input->post('search_text');
            if (isset($search)) {
			}	
                    $data['searchby'] = "text";
					
                    $data['search_text'] = trim($this->input->post('search_text'));
					$data['search_text'] = "";
                    $resultlist = $this->guardian_model->searchFullText($search_text);
                    $data['resultlist'] = $resultlist;
					//echo "<pre>";print_r($resultlist);exit;
            
			
            $this->load->view('layout/header', $data);
            $this->load->view('guardian/guardianSearch', $data);
            $this->load->view('layout/footer', $data);
        
    }



    public function doupload($id) {
        $config = array(
            'upload_path' => "./uploads/guardian_images/",
            'allowed_types' => "gif|jpg|png|jpeg|df",
            'overwrite' => TRUE,
        );
        $config['file_name'] = $id . ".jpg";
        $this->upload->initialize($config);
        $this->load->library('upload', $config);
        if ($this->upload->do_upload()) {
            $data = array('upload_data' => $this->upload->data());
            $upload_data = $this->upload->data();
            $data_record = array('id' => $id, 'image' => $upload_data['file_name']);
            $this->setting_model->add($data_record);

            $this->load->view('upload_success', $data);
        } else {
            $error = array('error' => $this->upload->display_errors());
            print_r($error);
            $this->load->view('file_view', $error);
        }
    }

    function getlogindetail() {
        $student_id = $this->input->post('guardian_id');
        $examSchedule = $this->user_model->getLoginDetails($student_id);
        echo json_encode($examSchedule);
    }
		
    public function sendSms() 
	{
		$input_data = $this->input->post(); $resmsg='error';
		if($input_data['mobileNo']!='' && $input_data['mssg']!='')
		{
			$this->load->library('smsgateway');
			$mobileno=$input_data['mobileNo'];
			$msg=$input_data['mssg'];
			if($this->smsgateway->sendSmsJob($mobileno,$msg))	$resmsg='success';
		}else	echo $resmsg;
	}
	
    public function sendEmail() 
	{
		$input_data = $this->input->post(); $resmsg='error';
		if($input_data['email']!='' && $input_data['mssg']!='')
		{
			$email=$input_data['email'];
			$msg=$input_data['mssg'];
			$setting_result = $this->setting_model->get();
			//print_r($setting_result);exit;
			$to			 = $email;
			$headers	 = "MIME-Version: 1.0\r\n";
			$headers	.= "Content-type: text/html; charset=iso-8859-1\r\n";
			$headers	.= "From: ".$setting_result['name']." <".$setting_result['email'].">\n" . "\r\n";
			
			$subject = "School Notification";
			$message ="<html><head></head><body>"."<style type=\"text/css\">
			<!--
			.style4 {font-size: x-small}
			-->
			</style>
			".$msg."
			</body><html>"; 
			$m = @mail($to,$subject, $message,$headers);
			
			if($m)	$resmsg='success';
		}else	echo $resmsg;
	}
	
    public function createInvoice() 
	{	
		$data['title'] = 'Create Invoice';
		
		$this->load->view('layout/header', $data);
		$this->load->view('guardian/createInvoice', $data);
		$this->load->view('layout/footer', $data);
	}
    public function createInvoiceForParent() 
	{		
		$this->load->model('student_parent_fees_model');
		$this->load->model('student_wise_fee_model');
        $guardians = $this->guardian_model->grabData();
		
		$current_month =  date('m');
		$current_yr = date('Y');
		
		if(!empty($guardians))
		{			
			foreach($guardians as $guardian)
			{
				$student_list =  $this->guardian_model->getParentStudents(['S.student_parent_id'=>$guardian->id]);
				//print_r($student_list);
				$student_fee_ids = array();
				if(!empty($student_list))
				{
					$del_cond['student_parent_id'] = $guardian->id;
					$del_cond['month']=$current_month;
					$del_cond['year']=$current_yr;
					$this->student_parent_fees_model->deleteData($del_cond);
					
					$tot_fee=0; $tot_discount=0; $tot_amount=0;
					foreach($student_list as $key => $studnt)
					{
						$class_id = $studnt->class_id;
						$session_id = $studnt->session_id;
												
						$feedata = $this->guardian_model->getFeeBycategory($class_id,$session_id);
						//print_r($feedata);
						if(($key+1)==2)
						{
							$typ = strtolower(($key+1).'nd Child Discount');
						}
						else if(($key+1)==3)
						{
							$typ = strtolower(($key+1).'rd Child Discount');
						}else{
							$typ = strtolower(($key+1).'th Child Discount');
						}
						
						$tuition_fee =0; $_dicount=0;
						if(!empty($feedata))
						{
							foreach($feedata as $val)
							{
								
								if($typ == strtolower($val->type))
								{
									$_dicount = $val->amount;
								}
								
								if(strtolower($val->type) == 'tuition fees')
								{
									$tuition_fee = $val->amount;
								}
								$feecategory_id = $val->feecategory_id;
							}
							
						}
						
						$total_row = $tuition_fee-$_dicount;						
						$tot_fee += $tuition_fee;
						$tot_discount+=$_dicount;
						$tot_amount+=$total_row;
						
						$Student_fee_data['feecategory_id']=$feecategory_id;
						$Student_fee_data['student_id']=$studnt->student_id;
						$Student_fee_data['class_id']=$class_id;
						$Student_fee_data['student_session_id']=$session_id;
						$Student_fee_data['amount']=$tuition_fee;
						$Student_fee_data['amount_discount']=$_dicount;
						$Student_fee_data['net_amount']=$total_row;
						//print_r($Student_fee_data);
						$student_fee_ids[]= $this->student_wise_fee_model->add($Student_fee_data);
						//die($this->db->last_query());
					}
					
					$parent_fee_data['student_parent_id'] = $guardian->id;
					$parent_fee_data['amount'] = $tot_fee;
					$parent_fee_data['amount_discount'] = $tot_discount;
					$parent_fee_data['final_amount'] = $tot_amount;
					$parent_fee_data['date'] = time();
					$parent_fee_data['month'] = $current_month;
					$parent_fee_data['year'] = $current_yr;
					//print_r($parent_fee_data);
					$parent_fee_insid = $this->student_parent_fees_model->add($parent_fee_data);
					
					$this->student_wise_fee_model->updateBatchData(array('parent_fee_id'=>$parent_fee_insid),$student_fee_ids);
					
				}
			}
		}
		redirect(base_url('guardian/createInvoice'));
	}
}
?>