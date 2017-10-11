<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<div class="content-wrapper" style="min-height: 946px;">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> Guardian Information <?php //echo $this->lang->line('student_information'); ?> <small><?php //echo $this->lang->line('student1'); ?></small>        </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <div class="box box-primary">
                    <div class="box-body box-profile">
                        <!--<img class="profile-user-img img-responsive img-circle" src="<?php //echo base_url() . $student['image'] ?>" alt="User profile picture">-->
                        <h3 class="profile-username text-center"><?php echo $guardian->guardian_name; ?></h3>
                        <ul class="list-group list-group-unbordered">
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('guardian_name'); ?></b> <a class="pull-right text-aqua"><?php echo $guardian->guardian_name; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('guardian_relation'); ?></b> <a class="pull-right text-aqua"><?php echo $guardian->guardian_relation; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('guardian_phone'); ?></b> <a class="pull-right text-aqua"><?php echo $guardian->guardian_phone; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('guardian_occupation'); ?></b> <a class="pull-right text-aqua"><?php echo $guardian->guardian_occupation; ?></a>
                            </li>
                            <li class="list-group-item">
                                <b><?php echo $this->lang->line('guardian_address'); ?></b> <a class="pull-right text-aqua"><?php echo $guardian->guardian_address; ?></a>
                            </li>
                        </ul>
                        <div> 
							<a id="sendEmailSms" href="javascript:;" class=" text-aqua " style=" background: #666; color: #fff!important; padding: 5px 7px;text-align: center;margin: 0 auto;width: 106px; display:block;   border-radius: 3px;"> Send Email/SMS</a>
						</div>
					</div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#activity" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('details'); ?></a></li>
                        <li class=""><a href="#exam" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('students'); ?></a></li>
                        <li class=""><a href="#fee" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('fees'); ?></a></li>
                        <!--<li class=""><a href="#documents" data-toggle="tab" aria-expanded="true"><?php echo $this->lang->line('documents'); ?></a></li>->
                        <li class="pull-right"><a href="<?php echo base_url() ?>/student/delete/<?php echo $student['id']; ?>" class="text-red" onclick="return confirm('Are you sure you want to delete this Student? All related data can not be recovered!');"><i class="fa fa-trash"></i> <?php echo $this->lang->line('delete'); ?> <?php echo $this->lang->line('student'); ?></a></li>
                        <!--<li class="pull-right">
                            <a href="#"  class="schedule_modal text-green" data-toggle="tooltip" title="login detail"><i class="fa fa-key"></i>
                                <?php echo $this->lang->line('login_details'); ?>
                            </a>
                        </li>-->
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="activity">
						
                            <h3><?php echo $this->lang->line('parent'); ?> / <?php echo $this->lang->line('guardian_details'); ?> </h3><hr/>
                            <table class="table table-hover table-striped">
                                <tr>
                                    <td  class="col-md-4"><?php echo $this->lang->line('father_name'); ?></td>
                                    <td  class="col-md-5"><?php echo $guardian->father_name; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('father_phone'); ?></td>
                                    <td><?php echo $guardian->father_phone; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('father_occupation'); ?></td>
                                    <td><?php echo $guardian->father_occupation; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('mother_name'); ?></td>
                                    <td><?php echo $guardian->mother_name; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('mother_phone'); ?></td>
                                    <td><?php echo $guardian->mother_phone; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('mother_occupation'); ?></td>
                                    <td><?php echo $guardian->mother_occupation; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_name'); ?></td>
                                    <td><?php echo $guardian->guardian_name; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_relation'); ?></td>
                                    <td><?php echo $guardian->guardian_relation; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_phone'); ?></td>
                                    <td><?php echo $guardian->guardian_phone; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_occupation'); ?></td>
                                    <td><?php echo $guardian->guardian_occupation; ?></td>
                                </tr>
                                <tr>
                                    <td><?php echo $this->lang->line('guardian_address'); ?></td>
                                    <td><?php echo $guardian->guardian_address; ?></td>
                                </tr>

                                </tbody>
                            </table>
							
                        </div>
                        <div class="tab-pane" id="fee">
                            <h2 class="page-header"><?php echo $this->lang->line('fees'); ?></h2>
                            <?php
                            if (empty($guardian_fees)) {
                                ?>
                                <div class="alert alert-danger">
                                    No Fees Found.
                                </div>
                                <?php
                            } else {
                                ?>
								<div class="row no-print">
									<!--<div class="col-xs-12">
										<a href="#" class="btn btn-xs btn-info printDoc pull-right"><i class="fa fa-print"></i> Print Invoice </a>
									</div>-->
								</div>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('payment_id'); ?></th>
                                            <th><?php echo $this->lang->line('date'); ?></th>
                                            <th class="text text-center"><?php echo $this->lang->line('status'); ?></th>
                                            <th  class="text text-right"><?php echo $this->lang->line('amount'); ?></th>
                                            <!--<th  class="text text-right"><?php //echo $this->lang->line('fine'); ?></th>-->
                                            <th class="text text-right" ><?php echo $this->lang->line('discount'); ?></th>
                                            <th class="text text-right" ><?php echo $this->lang->line('total'); ?></th>
											<th class="pull-right"><?php echo $this->lang->line('action'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="fee_sec">
                                        <?php
                                        
										$tot_fee=0; $tot_discount=0; $tot_amount=0;
										foreach ($guardian_fees as $key => $inv)
										{
											$payment_status = '<span class="label bg-red">Not Paid</span>';
                                        ?>
											<tr>
												<td>
													<a href="#" class="<?php //echo $cls; ?>"><?php echo $inv->id; ?></a>
														
												</td>
												<td class="<?php //echo $cls; ?>">
												<?php
													/* if ($fee['date'] != "xxx") {
														echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($fee['date']));
													} else {
														echo $fee['date'];
													} */
													echo date('d-m-Y',$inv->date);
													?>
												</td>
												<td class="text text-center"><?php echo $payment_status; ?></td>
												<td class="text text-right"><?php echo ($currency_symbol . $inv->amount); ?></td>
												<td class="<?php echo $cls; ?> text text-right"><?php echo  ($inv->amount_discount>0?'-':'').$currency_symbol .$inv->amount_discount; ?></td>
												
												<td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $inv->final_amount); ?></td>
												<td class="pull-right">
                                                    <a  href="<?php echo base_url(); ?>guardian/invoice/<?php echo $inv->id ?>" class="btn btn-info btn-xs" data-toggle="tooltip" title="" data-original-title=""><?php echo $this->lang->line('details'); ?>
                                                    </a>
                                                </td>
											</tr>
                                        <?php		
                                        }
                                        ?>
                                    </tbody>
                                </table>
                           <?php
                            }
                            ?>
							
                        </div>
                        <div class="tab-pane" id="documents">
                            <div class="timeline-header no-border">
                                <button type="button"  data-student-session-id="<?php echo $student['student_session_id'] ?>" class="btn btn-xs btn-primary pull-right myTransportFeeBtn"> <i class="fa fa-upload"></i>  Upload Documents</button>

                                <h2 class="page-header"><?php echo $this->lang->line('documents'); ?> <?php echo $this->lang->line('list'); ?></h2>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>
                                                <?php echo $this->lang->line('title'); ?>
                                            </th>
                                            <th>
                                                <?php echo $this->lang->line('file'); ?> <?php echo $this->lang->line('name'); ?>
                                            </th>
                                            <th class="mailbox-date pull-right">
                                                <?php echo $this->lang->line('action'); ?>
                                            </th>
                                        </tr>
                                    </thead>
                                    <div class="row">
                                        <tbody>
                                            <?php
                                            if (empty($student_doc)) {
                                                ?>
                                                <tr>
                                                    <td colspan="5" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>
                                                </tr>
                                                <?php
                                            } else {
                                                foreach ($student_doc as $value) {
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $value['title']; ?></td>
                                                        <td><?php echo $value['doc']; ?></td>
                                                        <td class="mailbox-date pull-right">
                                                            <a href="<?php echo base_url(); ?>student/download/<?php echo $value['student_id'] . "/" . $value['doc']; ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="Download">
                                                                <i class="fa fa-download"></i>
                                                            </a>
                                                            <a href="<?php echo base_url(); ?>student/doc_delete/<?php echo $value['id'] . "/" . $value['student_id']; ?>"class="btn btn-default btn-xs"  data-toggle="tooltip" title="Delete" onclick="return confirm('Are you sure you want to delete this item?');">
                                                                <i class="fa fa-remove"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </tbody>
                                </table>
                            </div>
                            </table>
                        </div>
                        <div class="tab-pane" id="exam">
                            <h2 class="page-header"><?php echo $this->lang->line('student'); ?> <?php echo $this->lang->line('list'); ?>
							<a href="<?php echo base_url('student/create/'.$guardian->id)?>" class="btn btn-default btn-xs pull-right" data-toggle="tooltip" title="" data-original-title="Add"><i class="fa fa-plus"></i> Add Student</a>
							</h2>
							
							<table class="table table-striped">
								<thead>
									<tr>
										<th>
											<?php echo $this->lang->line('admission_no'); ?>
										</th>
										<th>
											<?php echo $this->lang->line('student_name'); ?>
										</th>
										<th>
											<?php echo $this->lang->line('class'); ?>
										</th>
										<th>
											<?php echo $this->lang->line('guardian_name'); ?>
										</th>
										<th>
											<?php echo $this->lang->line('date_of_birth'); ?>
										</th>										
										<th class="mailbox-date pull-right">
											<?php echo $this->lang->line('gender'); ?>
										</th>
									</tr>
								</thead>
								<div class="row">
									<tbody>
										<?php //print_r($student_list);
										if (empty($student_list)) 
										{
											?>
												<tr>
													<td colspan="6" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>
												</tr>
											<?php
										} 
										else
										{
											foreach ($student_list as $value)
											{
											?>													
												<tr>
													<td><?php echo !empty($value->admission_no)?$value->admission_no:'-'; ?></td>
													<td><a href="<?php echo base_url('student/view/'.$value->student_id);?>"><?php echo !empty($value->firstname)?$value->firstname.' '.$value->lastname:'-'; ?></a></td>
													<td><?php echo !empty($value->class)?$value->class:'-'; ?></td>
													<td><?php echo !empty($value->guardian_name)?$value->guardian_name:'-'; ?></td>
													<td><?php echo ($value->dob!='')?$value->dob:'-'; ?></td>
													<td><?php echo !empty($value->gender)?$value->gender:'-'; ?></td>
												</tr>
												<?php
											}
										}
										?>
									</tbody>
									</div>
                                </table>
							</div>
                    </div>
                </div>
            </div>
    </section>
</div>
<script type="text/javascript">
    $(".myTransportFeeBtn").click(function () {
        $("span[id$='_error']").html("");
        $('#transport_amount').val("");
        $('#transport_amount_discount').val("0");
        $('#transport_amount_fine').val("0");
        var student_session_id = $(this).data("student-session-id");
        $('.transport_fees_title').html("<b>Upload Document</b>");
        $('#transport_student_session_id').val(student_session_id);
        $('#myTransportFeesModal').modal({
            backdrop: 'static',
            keyboard: false,
            show: true

        });
    });
</script>
<div class="modal fade" id="myTransportFeesModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title title text-center transport_fees_title"></h4>
            </div>
            <div class="">
                <div class="form-horizontal">
                    <div class="">
                        <input  type="hidden" class="form-control" id="transport_student_session_id"  value="0" readonly="readonly"/>
                        <form id="form1" action="<?php echo site_url('student/create_doc') ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
                             <?php echo $this->customlib->getCSRF(); ?>
                            <div id='upload_documents_hide_show'>
                                <input type="hidden" name="student_id" value="<?php echo $student_doc_id; ?>" id="student_id">
                                <h4><?php echo $this->lang->line('upload_documents1'); ?></h4>
                                <div class="col-md-12">
                                    <div class="">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><?php echo $this->lang->line('title'); ?></label>
                                                <input id="first_title" name="first_title" placeholder="" type="text" class="form-control"  value="<?php echo set_value('first_title'); ?>" />
                                                <span class="text-danger"><?php echo form_error('first_title'); ?></span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1"><?php echo $this->lang->line('Documents'); ?></label>
                                                <input id="first_doc_id" name="first_doc" placeholder="" type="file" style="margin-top:8px; border:0; outline:none;" class="form-control"  value="<?php echo set_value('first_doc'); ?>" />
                                                <span class="text-danger"><?php echo form_error('first_doc'); ?></span>
                                            </div>
                                        </div>
                                    </div></div>
                            </div>
                            <div class="modal-footer" style="clear:both">
                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal"><?php echo $this->lang->line('cancel'); ?></button>
                                <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="scheduleModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title_logindetail"></h4>
            </div>
            <div class="modal-body_logindetail">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $this->lang->line('cancel'); ?></button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="smsEmailModal" role="dialog">
	<div class="modal-dialog">      
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title title text-center fees_title">Send Message</h4>
			</div>
			<div class="modal-body">
				<div class="form-horizontal">
					<div class="box-body">
						
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">Quick text</label>
							<div class="col-sm-10">
								<select id="sample_msg" class="form-control">
									<option>Sample text1</option>
									<option>Sample text2</option>
									<option>Sample text3</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="msg_description" class="col-sm-2 control-label">Note</label>
							<div class="col-sm-10">
								<input type="hidden" id="gemail" value="<?php echo $guardian->guardian_email; ?>"/>
								<textarea class="form-control" rows="3" id="msg_description" placeholder=""></textarea>
								<input type="hidden" value="<?php echo $guardian->guardian_phone; ?>"/>
							</div>
						</div>
						<div class="form-group">
							<label id="resMsg" class="col-sm-2 control-label">&nbsp;</label>
						</div>
					</div>                   
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default pull-left" data-dismiss="modal"><?php echo $this->lang->line('cancel'); ?></button>
				<button type="button" class="btn btn-primary save_button" id="snd_sms" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> Processing">Sms</button>
				<button type="button" class="btn btn-primary save_button" id="snd_email" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> Processing"> Email </button>
			</div>
		</div>

	</div>
</div>
<script type="text/javascript">

	var base_url = '<?php echo base_url() ?>';
	
	$("#sendEmailSms").click(function () {
		$("span[id$='_error']").html("");
		$('#smsEmailModal').modal({
			backdrop: 'static',
			keyboard: false,
			show: true
		});
	});
	
	$(document).on('change','#sample_msg', function(){
		$("#msg_description").val($(this).val());
	});
	
	$(document).on('click','#snd_email', function(){
		var mssg = $("#msg_description").val();
		var email = $("#gemail").val();
		if(email!='' && mssg!='')
		{
			$.ajax({
            type: "post",
            url: base_url + "guardian/sendEmail",
            data: {'email': email,'mssg': mssg},
            //dataType: "json",
            success: function (response) {
					$('#resMsg').text(response);
				}
			});
		}
	});
	
	$(document).on('click','#snd_sms', function(){
		var mssg = $("#msg_description").val();
		var mobileNo = $("#msg_description").next('input').val();
		if(mobileNo!='' && mssg!='')
		{
			$.ajax({
            type: "post",
            url: base_url + "guardian/sendSms",
            data: {'mobileNo': mobileNo,'mssg': mssg},
            //dataType: "json",
            success: function (response) {
					$('#resMsg').text(response);
				}
			});
		}
	});
	
    $(document).on('click', '.schedule_modal', function () {
        $('.modal-title_logindetail').html("");
        $('.modal-title_logindetail').html("Login Details");
        var base_url = '<?php echo base_url() ?>';
        var student_id = '<?php echo $student["id"] ?>';
        var student_first_name = '<?php echo $student["firstname"] ?>';
        var student_last_name = '<?php echo $student["lastname"] ?>';
        $.ajax({
            type: "post",
            url: base_url + "student/getlogindetail",
            data: {'student_id': student_id},
            dataType: "json",
            success: function (response) {
                var data = "";
                data += '<div class="col-md-12">';
                data += '<div class="table-responsive">';
                data += '<p class="lead text text-center">' + student_first_name + ' ' + student_last_name + '</p>';
                data += '<table class="table table-hover">';
                data += '<thead>';
                data += '<tr>';
                data += '<th>User Type</th>';
                data += '<th class="text text-center">Username</th>';
                data += '<th class="text text-center">Password</th>';
                data += '</tr>';
                data += '</thead>';
                data += '<tbody>';
                $.each(response, function (i, obj)
                {
                    data += '<tr>';
                    data += '<td><b>' + firstToUpperCase(obj.role) + '</b></td>';
                    data += '<td class="text text-center">' + obj.username + '</td> ';
                    data += '<td class="text text-center">' + obj.password + '</td> ';
                    data += '</tr>';
                });
                data += '</tbody>';
                data += '</table>';
                data += '<b class="lead text text-danger" style="font-size:14px;"> Login Url: ' + base_url + 'site/userlogin</b>';
                data += '</div>  ';
                data += '</div>  ';
                $('.modal-body_logindetail').html(data);
                $("#scheduleModal").modal('show');
            }
        });
    });

    function firstToUpperCase(str) {
        return str.substr(0, 1).toUpperCase() + str.substr(1);
    }
	
    $(document).ready(function () {
        $('.detail_popover').popover({
            placement: 'right',
            title: '',
            trigger: 'hover',
            container: 'body',
            html: true,
            content: function () {
                return $(this).closest('td').find('.fee_detail_popover').html();
            }
        });
    });
	
	function Popup(data) 
	{

		var frame1 = $('<iframe />');
		frame1[0].name = "frame1";
		frame1.css({ "position": "absolute", "top": "-1000000px" });
		$("body").append(frame1);
		var frameDoc = frame1[0].contentWindow ? frame1[0].contentWindow : frame1[0].contentDocument.document ? frame1[0].contentDocument.document : frame1[0].contentDocument;
		frameDoc.document.open();
		//Create a new HTML document.
		frameDoc.document.write('<html>');
		frameDoc.document.write('<head>');
		frameDoc.document.write('<title></title>');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/bootstrap/css/bootstrap.min.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/font-awesome.min.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/ionicons.min.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/AdminLTE.min.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/dist/css/skins/_all-skins.min.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/iCheck/flat/blue.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/morris/morris.css">');


		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/jvectormap/jquery-jvectormap-1.2.2.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/datepicker/datepicker3.css">');
		frameDoc.document.write('<link rel="stylesheet" href="' + base_url + 'backend/plugins/daterangepicker/daterangepicker-bs3.css">');
		frameDoc.document.write('</head>');
		frameDoc.document.write('<body>');
		frameDoc.document.write(data);
		frameDoc.document.write('</body>');
		frameDoc.document.write('</html>');
		frameDoc.document.close();
		setTimeout(function () {
		window.frames["frame1"].focus();
		window.frames["frame1"].print();
		frame1.remove();
		}, 500);

		return true;
	}
	$(document).on('click', '.printDoc', function () {
	  var array_to_print = [];
		$.each($("#fee_sec tr"), function () {
			var cat = $(this).data('category');
			item = {}
			item ["category"] = cat;
			item ["row_id"] = $(this).val();
			array_to_print.push(item);
		});
		if (array_to_print.length == 0) {
			alert("no record found");
		} else {
			var guardian_id = '<?php echo $guardian->id ?>';
			$.ajax({
				url: '<?php echo site_url("guardian/printFees") ?>',
				type: 'post',                   
				data: {'guardian_id': guardian_id, 'data': JSON.stringify(array_to_print)},
				success: function (response) {                      
				 Popup(response);
				 }
			 });
		}
	});
</script>