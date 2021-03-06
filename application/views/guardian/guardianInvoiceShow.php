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
					</div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#fee" data-toggle="tab" aria-expanded="true">Invoice</a></li>
						
                    </ul>
                    <div class="tab-content">                        
                        <div class="tab-pane active" id="fee">
                            <h2 class="page-header">Invoice Details</h2>
                            <?php
                            if (empty($student_wise_fees)) {
                                ?>
                                <div class="alert alert-danger">
                                    No Fees Found.
                                </div>
                                <?php
                            } else {
                                ?>
								<div class="box-body table-responsive">
								<div class="row no-print">
									<div class="col-xs-12">
										<a href="#" class="btn btn-xs btn-info printDoc pull-right"><i class="fa fa-print"></i> Print Invoice </a>
									</div>
								</div>
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('payment_id'); ?></th>
                                            <th><?php echo $this->lang->line('date'); ?></th>
                                            <th><?php echo $this->lang->line('name'); ?></th>
                                            <th><?php echo $this->lang->line('class'); ?></th>
                                            <th><?php echo $this->lang->line('category'); ?></th>
											
                                            <th class="text text-center"><?php echo $this->lang->line('status'); ?></th>
                                            <th  class="text text-right"><?php echo $this->lang->line('amount'); ?></th>
                                            <!--<th  class="text text-right"><?php //echo $this->lang->line('fine'); ?></th>-->
                                            <th class="text text-right" ><?php echo $this->lang->line('discount'); ?></th>
                                            <th class="text text-right" ><?php echo $this->lang->line('total'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="fee_sec">
                                        <?php										
										foreach ($student_wise_fees as $key => $fee)
										{
											$payment_status = '<span class="label bg-red">Not Paid</span>';			
                                        ?>
											<tr>
												<td>
													<?php
													echo $guardian_fee->id;
													?>
												</td>
												<td class="<?php //echo $cls; ?>">
													<?php												
														echo date('d-m-Y',$guardian_fee->date);
													?>
												</td>
												<td><?php echo $fee->firstname."&nbsp;".$fee->lastname; ?></td>
												<td><?php echo $fee->class; ?></td>
												<td><?php echo $fee->category; ?></td>
												
												<td class="text text-center"><?php echo $payment_status; ?></td>
												<td class="text text-right"><?php echo ($currency_symbol . $fee->amount); ?></td>
												<td class="<?php echo $cls; ?> text text-right"><?php echo  ($fee->amount_discount>0?'-':'').$currency_symbol .$fee->amount_discount; ?></td>
												<!--<td class="<?php //echo $cls; ?> text text-right"><?php //echo ($currency_symbol . $fee['fine']); ?></td>-->
												<td class="<?php echo $cls; ?> text text-right"><?php echo ($currency_symbol . $fee->net_amount); ?></td>
											</tr>
                                        <?php		
                                        }
                                        ?>
										<tr>
											<td class="text text-right" colspan="6">Total:- </td>
											<td class="text text-right"><?php echo $currency_symbol.$guardian_fee->amount;?></td>
											<td class="text text-right"><?php echo '-'.$currency_symbol.$guardian_fee->amount_discount;?></td>
											<td class="text text-right"><?php echo $currency_symbol.$guardian_fee->final_amount;?></td>
										</tr>
                                    </tbody>
                                </table>
                                </div>
                           <?php
                            }
                            ?>
							
                        </div>
                        
                </div>
            </div>
    </section>
</div>
<script type="text/javascript">

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