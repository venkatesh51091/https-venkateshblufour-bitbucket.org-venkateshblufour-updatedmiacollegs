<div class="content-wrapper">
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> Guardian information<?php //echo $this->lang->line('guardian_information'); ?> <small><?php //echo $this->lang->line('student1'); ?></small>        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h4>Guardian<?php //echo $this->lang->line('student'); ?> <?php //echo $this->lang->line('admission'); ?> </h4>
                        <!--<div class="pull-right box-tools">
                            <a href="<?php //echo site_url('student/import') ?>">
                                <button class="btn btn-primary btn-sm"><i class="fa fa-upload"></i> <?php //echo $this->lang->line('import_student'); ?></button>
                            </a>
                        </div>-->
						 <form id="form1" action="<?php echo site_url('guardian/create/'.(isset($guardian)?$guardian->id:'')) ?>"  id="employeeform" name="employeeform" method="post" accept-charset="utf-8" enctype="multipart/form-data">
							<div class="box-body">
								<?php if ($this->session->flashdata('msg')) { ?>
									<?php echo $this->session->flashdata('msg'); ?>
								<?php } ?>
								<?php echo $this->customlib->getCSRF(); ?>
							   
								<h4><?php echo $this->lang->line('parent_guardian_detail'); ?></h4>
								<hr>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1"><?php echo $this->lang->line('father_name'); ?></label>
											<input id="father_name" name="father_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('father_name',$guardian->father_name); ?>" />
											<span class="text-danger"><?php echo form_error('father_name'); ?></span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1"><?php echo $this->lang->line('father_phone'); ?></label>
											<input id="father_phone" name="father_phone" placeholder="" type="text" class="form-control"  value="<?php echo set_value('father_phone',$guardian->father_phone); ?>" />
											<span class="text-danger"><?php echo form_error('father_phone'); ?></span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1"><?php echo $this->lang->line('father_occupation'); ?></label>
											<input id="father_occupation" name="father_occupation" placeholder="" type="text" class="form-control"  value="<?php echo set_value('father_occupation',$guardian->father_occupation); ?>" />
											<span class="text-danger"><?php echo form_error('father_occupation'); ?></span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1"><?php echo $this->lang->line('mother_name'); ?></label>
											<input id="mother_name" name="mother_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('mother_name',$guardian->mother_name); ?>" />
											<span class="text-danger"><?php echo form_error('mother_name'); ?></span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1"><?php echo $this->lang->line('mother_phone'); ?></label>
											<input id="mother_phone" name="mother_phone" placeholder="" type="text" class="form-control"  value="<?php echo set_value('mother_phone',$guardian->mother_phone); ?>" />
											<span class="text-danger"><?php echo form_error('mother_phone'); ?></span>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label for="exampleInputEmail1"><?php echo $this->lang->line('mother_occupation'); ?></label>
											<input id="mother_occupation" name="mother_occupation" placeholder="" type="text" class="form-control"  value="<?php echo set_value('mother_occupation',$guardian->mother_occupation); ?>" />
											<span class="text-danger"><?php echo form_error('mother_occupation'); ?></span>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<label>If Guardian is&nbsp;&nbsp;&nbsp;</label>
										<label class="radio-inline">
											<input type="radio" name="guardian_is" <?php
											echo set_value('guardian_is',$guardian->guardian_is) == "father" ? "checked" : "";
											?>   value="father"> <?php echo $this->lang->line('father'); ?>
										</label>
										<label class="radio-inline">
											<input type="radio" name="guardian_is" <?php
											echo set_value('guardian_is',$guardian->guardian_is) == "mother" ? "checked" : "";
											?>   value="mother"> <?php echo $this->lang->line('mother'); ?>
										</label>
										<label class="radio-inline">
											<input type="radio" name="guardian_is" <?php
											echo set_value('guardian_is',$guardian->guardian_is) == "other" ? "checked" : "";
											?>   value="other"> <?php echo $this->lang->line('other'); ?>
										</label>
										<span class="text-danger"><?php echo form_error('guardian_is'); ?></span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1"><?php echo $this->lang->line('guardian_name'); ?></label>
													<input id="guardian_name" name="guardian_name" placeholder="" type="text" class="form-control"  value="<?php echo set_value('guardian_name',$guardian->guardian_name); ?>" />
													<span class="text-danger"><?php echo form_error('guardian_name'); ?></span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1"><?php echo $this->lang->line('email'); ?></label>
													<input id="guardian_email" name="guardian_email" placeholder="" type="text" class="form-control"  value="<?php echo set_value('guardian_email',$guardian->guardian_email); ?>" />
													<span class="text-danger"><?php echo form_error('guardian_email'); ?></span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1"><?php echo $this->lang->line('guardian_relation'); ?></label>
													<input id="guardian_relation" name="guardian_relation" placeholder="" type="text" class="form-control"  value="<?php echo set_value('guardian_relation',$guardian->guardian_relation); ?>" />
													<span class="text-danger"><?php echo form_error('guardian_relation'); ?></span>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1"><?php echo $this->lang->line('guardian_phone'); ?></label>
													<input id="guardian_phone" name="guardian_phone" placeholder="" type="text" class="form-control"  value="<?php echo set_value('guardian_phone',$guardian->guardian_phone); ?>" />
													<span class="text-danger"><?php echo form_error('guardian_phone'); ?></span>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputEmail1"><?php echo $this->lang->line('guardian_occupation'); ?></label>
													<input id="guardian_occupation" name="guardian_occupation" placeholder="" type="text" class="form-control"  value="<?php echo set_value('guardian_occupation',$guardian->guardian_occupation); ?>" />
													<span class="text-danger"><?php echo form_error('guardian_occupation'); ?></span>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="exampleInputEmail1"><?php echo $this->lang->line('guardian_address'); ?></label>
											<textarea id="guardian_address" name="guardian_address" placeholder="" class="form-control" rows="4"><?php echo set_value('guardian_address',$guardian->guardian_address); ?></textarea>
											<span class="text-danger"><?php echo form_error('guardian_address'); ?></span>
										</div>
									</div>
								</div>
								
								<div class="box-footer">
									<button type="button" id="btnreset" class="btn btn-default"><?php echo $this->lang->line('reset'); ?></button>
									<button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
								</div>
							</div>
						</form>
                   </div>
                </div>
			</div>
		</div>
	</section>
</div>
<script type="text/javascript">
    $("#ud").onclick(function () {
       // alert("h");
    })

    $("udhs").onclick(function () {
        $("#upload_documents_hide_show").toggle();
    });
</script>

<script type="text/javascript">
    function getSectionByClass(class_id, section_id) {
        if (class_id != "" && section_id != "") {
            $('#section_id').html("");
            var base_url = '<?php echo base_url() ?>';
            var div_data = '<option value="">--Select--</option>';
            $.ajax({
                type: "GET",
                url: base_url + "sections/getByClass",
                data: {'class_id': class_id},
                dataType: "json",
                success: function (data) {
                    $.each(data, function (i, obj)
                    {
                        var sel = "";
                        if (section_id == obj.section_id) {
                            sel = "selected";
                        }
                        div_data += "<option value=" + obj.section_id + " " + sel + ">" + obj.section + "</option>";
                    });
                    $('#section_id').append(div_data);
                }
            });
        }
    }

    $(document).ready(function () {
        var date_format = '<?php echo $result = strtr($this->customlib->getSchoolDateFormat(), ['d' => 'dd', 'm' => 'mm', 'Y' => 'yyyy',]) ?>';
        var class_id = $('#class_id').val();
        var section_id = '<?php echo set_value('section_id') ?>';
        getSectionByClass(class_id, section_id);

        $(document).on('change', '#class_id', function (e) {
            $('#section_id').html("");
            var class_id = $(this).val();
            var base_url = '<?php echo base_url() ?>';
            var div_data = '<option value="">--Select--</option>';
            $.ajax({
                type: "GET",
                url: base_url + "sections/getByClass",
                data: {'class_id': class_id},
                dataType: "json",
                success: function (data) {
                    $.each(data, function (i, obj)
                    {
                        div_data += "<option value=" + obj.section_id + ">" + obj.section + "</option>";
                    });
                    $('#section_id').append(div_data);
                }
            });
        });

        $('#dob,#admission_date').datepicker({
            format: date_format,
            autoclose: true
        });

        $("#btnreset").click(function () {
            $("#form1")[0].reset();
        });

    });
    function auto_fill_guardian_address() {
        if ($("#autofill_current_address").is(':checked'))
        {
            $('#current_address').val($('#guardian_address').val());
        }
    }
    function auto_fill_address() {
        if ($("#autofill_address").is(':checked'))
        {
            $('#permanent_address').val($('#current_address').val());
        }
    }
    $('input:radio[name="guardian_is"]').change(
            function () {
                if ($(this).is(':checked')) {
                    var value = $(this).val();
                    if (value == "father") {
                        $('#guardian_name').val($('#father_name').val());
                        $('#guardian_phone').val($('#father_phone').val());
                        $('#guardian_occupation').val($('#father_occupation').val());
                        $('#guardian_relation').val("Father")
                    } else if (value == "mother") {
                        $('#guardian_name').val($('#mother_name').val());
                        $('#guardian_phone').val($('#mother_phone').val());
                        $('#guardian_occupation').val($('#mother_occupation').val());
                        $('#guardian_relation').val("Mother")
                    } else {
                        $('#guardian_name').val("");
                        $('#guardian_phone').val("");
                        $('#guardian_occupation').val("");
                        $('#guardian_relation').val("")
                    }
                }
            });

    $(document).on('change', '#route_id', function (e) {
        var element = $(this).find('option:selected');
        var myTag = element.attr("data-fee");
        $('#transport_fees').val(myTag);
    });
</script>

<div class="modal fade" id="mySiblingModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title title text-center modal_title"></h4>
            </div>
            <div class="modal-body">
                <div class="form-horizontal">
                    <div class="box-body">
                    <div class="sibling_msg">

                    </div>
                        <input  type="hidden" class="form-control" id="transport_student_session_id"  value="0" readonly="readonly"/>
						<div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Class</label>
                            <div class="col-sm-10">
                                <select  id="sibiling_class_id" name="sibiling_class_id" class="form-control"  >
                                    <option value=""><?php echo $this->lang->line('select'); ?></option>
                                    <?php
                                    foreach ($classlist as $class) {
                                        ?>
                                        <option value="<?php echo $class['id'] ?>"<?php if (set_value('sibiling_class_id') == $class['id']) echo "selected=selected" ?>><?php echo $class['class'] ?></option>
                                        <?php
                                        $count++;
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Section</label>
                            <div class="col-sm-10">
                                <select  id="sibiling_section_id" name="sibiling_section_id" class="form-control" >
                                    <option value=""   ><?php echo $this->lang->line('select'); ?></option>
                                </select>
                                <span class="text-danger" id="transport_amount_error"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Student</label>

                            <div class="col-sm-10">
                                <select  id="sibiling_student_id" name="sibiling_student_id" class="form-control" >
                                    <option value=""   ><?php echo $this->lang->line('select'); ?></option>
                                </select>
                                <span class="text-danger" id="transport_amount_fine_error"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary add_sibling" id="load" data-loading-text="<i class='fa fa-circle-o-notch fa-spin'></i> Processing"><i class="fa fa-user"></i> Add</button>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(".mysiblings").click(function () {
        $('.sibling_msg').html("");
        $('.modal_title').html("<b>Sibling</b>");
        $('#mySiblingModal').modal({
            backdrop: 'static',
            keyboard: false,
            show: true
        });
    });
</script>

<script type="text/javascript">
    $(document).on('change', '#sibiling_class_id', function (e) {
        $('#sibiling_section_id').html("");
        var class_id = $(this).val();
        var base_url = '<?php echo base_url() ?>';
        var div_data = '<option value="">--Select--</option>';
        $.ajax({
            type: "GET",
            url: base_url + "sections/getByClass",
            data: {'class_id': class_id},
            dataType: "json",
            success: function (data) {
                $.each(data, function (i, obj)
                {
                    div_data += "<option value=" + obj.section_id + ">" + obj.section + "</option>";
                });
                $('#sibiling_section_id').append(div_data);
            }
        });
    });

    $(document).on('change', '#sibiling_section_id', function (e) {
        getStudentsByClassAndSection();
    });

    function getStudentsByClassAndSection() {
        $('#sibiling_student_id').html("");
        var class_id = $('#sibiling_class_id').val();
        var section_id = $('#sibiling_section_id').val();
        var student_id = '<?php echo set_value('student_id') ?>';
        var base_url = '<?php echo base_url() ?>';
        var div_data = '<option value="">--Select--</option>';
        $.ajax({
            type: "GET",
            url: base_url + "student/getByClassAndSection",
            data: {'class_id': class_id, 'section_id': section_id},
            dataType: "json",
            success: function (data) {
                $.each(data, function (i, obj)
                {
                    var sel = "";
                    if (section_id == obj.section_id) {
                        sel = "selected=selected";
                    }
                    div_data += "<option value=" + obj.id + ">" + obj.firstname + " " + obj.lastname + "</option>";
                });
                $('#sibiling_student_id').append(div_data);
            }
        });
    }

    $(document).on('click', '.add_sibling', function () {
        var student_id = $('#sibiling_student_id').val();
        var base_url = '<?php echo base_url() ?>';
        if(student_id.length > 0 ){
               $.ajax({
            type: "GET",
            url: base_url + "student/getStudentRecordByID",
            data: {'student_id': student_id},
            dataType: "json",
            success: function (data) {
                $('#sibling_name').text("Sibling: " + data.firstname + " " + data.lastname);
                $('#sibling_name_next').val(data.firstname + " " + data.lastname);
                $('#sibling_id').val(student_id);
                $('#father_name').val(data.father_name);
                $('#father_phone').val(data.father_phone);
                $('#father_occupation').val(data.father_occupation);
                $('#mother_name').val(data.mother_name);
                $('#mother_phone').val(data.mother_phone);
                $('#mother_occupation').val(data.mother_occupation);
                $('#guardian_name').val(data.guardian_name);
                $('#guardian_relation').val(data.guardian_relation);
                $('#guardian_address').val(data.guardian_address);
                $('#guardian_phone').val(data.guardian_phone);
                $('#state').val(data.state);
                $('#city').val(data.city);
                $('#pincode').val(data.pincode);
                $('#current_address').val(data.current_address);
                $('#permanent_address').val(data.permanent_address);
                $('#guardian_occupation').val(data.guardian_occupation);
                $("input[name=guardian_is][value='" + data.guardian_is + "']").prop("checked", true);
                $('#mySiblingModal').modal('hide');
            }
        });
           }else{
$('.sibling_msg').html("<div class='alert alert-danger'>No Student Selected</div>");
           }

    });
</script>