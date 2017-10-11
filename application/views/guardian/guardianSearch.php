<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<style type="text/css">
    /*REQUIRED*/
    .carousel-row {
        margin-bottom: 10px;
    }
	
    .slide-row {
        padding: 0;
        background-color: #ffffff;
        min-height: 150px;
        border: 1px solid #e7e7e7;
        overflow: hidden;
        height: auto;
        position: relative;
    }
	
    .slide-carousel {
        width: 20%;
        float: left;
        display: inline-block;
    }

    .slide-carousel .carousel-indicators {
        margin-bottom: 0;
        bottom: 0;
        background: rgba(0, 0, 0, .5);
    }

    .slide-carousel .carousel-indicators li {
        border-radius: 0;
        width: 20px;
        height: 6px;
    }

    .slide-carousel .carousel-indicators .active {
        margin: 1px;
    }

    .slide-content {
        position: absolute;
        top: 0;
        left: 20%;
        display: block;
        float: left;
        width: 80%;
        max-height: 76%;
        padding: 1.5% 2% 2% 2%;
        overflow-y: auto;
    }

    .slide-content h4 {
        margin-bottom: 3px;
        margin-top: 0;
    }

    .slide-footer {
        position: absolute;
        bottom: 0;
        left: 20%;
        width: 78%;
        height: 20%;
        margin: 1%;
    }

    /* Scrollbars */
    .slide-content::-webkit-scrollbar {
        width: 5px;
    }

    .slide-content::-webkit-scrollbar-thumb:vertical {
        margin: 5px;
        background-color: #999;
        -webkit-border-radius: 5px;
    }

    .slide-content::-webkit-scrollbar-button:start:decrement,
    .slide-content::-webkit-scrollbar-button:end:increment {
        height: 5px;
        display: block;
    }
</style>

<div class="content-wrapper" style="min-height: 946px;">  
    <section class="content-header">
        <h1>
            <i class="fa fa-user-plus"></i> Guardian Information<?php //echo $this->lang->line('guardian_information'); ?> <small><?php //echo $this->lang->line('guardian1'); ?></small>        </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><i class="fa fa-search"></i> <?php echo $this->lang->line('select_criteria'); ?></h3>
                    </div>
                    <div class="box-body">
                        <?php if ($this->session->flashdata('msg')) { ?> 
						<div class="alert alert-success">  <?php echo $this->session->flashdata('msg') ?> </div> 
						<?php } ?>
                        <div class="">
                            <!--<div class="col-md-6">
                                <form role="form" action="<?php echo site_url('guardian/search') ?>" method="post" class="form-horizontal">
                                     <?php echo $this->customlib->getCSRF(); ?>
                                    <div class="form-group">
                                        <div class="col-sm-6">
                                            <label><?php echo $this->lang->line('class'); ?></label>
                                            <select  id="class_id" name="class_id" class="form-control" >
                                                <option value=""><?php echo $this->lang->line('select'); ?></option>
                                                <?php
                                                foreach ($classlist as $class) {
                                                    ?>
                                                    <option value="<?php echo $class['id'] ?>" <?php if (set_value('class_id') == $class['id']) echo "selected=selected" ?>><?php echo $class['class'] ?></option>
                                                    <?php
                                                    $count++;
                                                }
                                                ?>
                                            </select>
                                            <span class="text-danger"><?php echo form_error('class_id'); ?></span>
                                        </div>
                                        <div class="col-sm-6">
                                            <label><?php echo $this->lang->line('section'); ?></label>
                                            <select  id="section_id" name="section_id" class="form-control" >
                                                <option value=""><?php echo $this->lang->line('select'); ?></option>
                                            </select>
                                            <span class="text-danger"><?php echo form_error('section_id'); ?></span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <button type="submit" name="search" value="search_filter" class="btn btn-primary btn-sm pull-right checkbox-toggle"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                                        </div>
                                    </div>
                                </form>
                            </div>-->
                            <div class="col-md-6">
                                <form role="form" action="<?php echo site_url('guardian/search') ?>" method="post" class="form-horizontal">
                                           <?php echo $this->customlib->getCSRF(); ?>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label><?php echo $this->lang->line('search_by_keyword'); ?></label>
                                            <input type="text" name="search_text" class="form-control"   placeholder="Search by Father Name,Mother Name,Guardian Name etc..">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <button type="submit" name="search" value="search_full" class="btn btn-primary pull-right btn-sm checkbox-toggle"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
                if (isset($resultlist)) {                 
                    ?>
                    <div class="nav-tabs-custom">
                        <!--<ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true"><i class="fa fa-list"></i> <?php echo $this->lang->line('list'); ?>  <?php echo $this->lang->line('view'); ?></a></li>
                            <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false"><i class="fa fa-newspaper-o"></i> <?php echo $this->lang->line('details'); ?> <?php echo $this->lang->line('view'); ?></a></li>
                        </ul>-->
                        <div class="tab-content">
                            <div class="tab-pane active table-responsive no-padding" id="tab_1">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th><?php echo $this->lang->line('guardian_name'); ?></th>
                                            <th><?php echo $this->lang->line('guardian_relation'); ?></th>
                                            <th><?php echo $this->lang->line('father_name'); ?></th>
                                            <th><?php echo $this->lang->line('father_occupation'); ?></th>
                                            <th><?php echo $this->lang->line('mother_name'); ?></th>
                                            <th><?php echo $this->lang->line('mother_occupation'); ?></th>
                                            <th><?php echo $this->lang->line('guardian_address'); ?></th>
                                            <th><?php echo $this->lang->line('created_at'); ?></th>
                                            <th class="pull-right"><?php echo $this->lang->line('action'); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        if (empty($resultlist)) {
                                            ?>
                                            <tr>
                                                <td colspan="12" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>
                                            </tr>
                                            <?php
                                        } else {
                                            $count = 1;
                                            foreach ($resultlist as $guardian) {
                                         ?>
                                                <tr>
                                                    <td><?php echo $guardian['guardian_name']; ?></td>
                                                    <td><?php echo $guardian['guardian_relation']; ?></td>
                                                    <td><?php echo $guardian['father_name']; ?></td>
                                                    <td><?php echo $guardian['father_occupation']; ?></td>
                                                    <td><?php echo $guardian['mother_name']; ?></td>
                                                    <td><?php echo $guardian['mother_occupation']; ?></td>
                                                    <td><?php echo $guardian['guardian_address']; ?></td>
                                                    <td><?php echo date($this->customlib->getSchoolDateFormat(), strtotime($guardian['created_at'])); ?></td>
                                                    <td class="pull-right">
														<a href="<?php echo base_url(); ?>guardian/view/<?php echo $guardian['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="Show" >
                                                            <i class="fa fa-reorder"></i>
                                                        </a>
                                                       <a href="<?php echo base_url(); ?>guardian/create/<?php echo $guardian['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="Edit">
                                                            <i class="fa fa-pencil"></i>
                                                       </a>
                                                      <!--  
                                                        <a href="<?php echo base_url(); ?>guardianfee/addfee/<?php echo $guardian['id'] ?>" class="btn btn-default btn-xs" data-toggle="tooltip" title="" data-original-title="Add Fee">
                                                            <?php //echo $currency_symbol; ?>
                                                       </a>-->
                                                    </td>
                                                </tr>
                                                <?php
                                                $count++;
                                            }
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>                           
                            <div class="tab-pane" id="tab_2">
                                <?php 
									/* if (empty($resultlist)) {
                                 ?>
                                    <div class="alert alert-info"><?php echo $this->lang->line('no_record_found'); ?></div>
                                    <?php
									} else {
                                    $count = 1;
                                    foreach ($resultlist as $guardian) {
                                        ?>
                                        <div class="carousel-row">
                                            <div class="slide-row">
                                                <div id="carousel-2" class="carousel slide slide-carousel" data-ride="carousel">
                                                    <div class="carousel-inner">
                                                        <div class="item active">
                                                            <a href="<?php echo base_url(); ?>guardian/view/<?php echo $guardian['id'] ?>"> <img class="img-responsive img-thumbnail" alt="Cinque Terre" style="width:150px;height:150px;" src="<?php echo base_url() . $guardian['image'] ?>" alt="Image"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="slide-content">
                                                    <h4><a href="<?php echo base_url(); ?>guardian/view/<?php echo $guardian['id'] ?>"> <?php echo $guardian['firstname'] . " " . $guardian['lastname'] ?></a></h4>
                                                    <div class="row">
                                                        <div class="col-xs-6 col-md-6">
                                                            <address>
                                                                <strong><b><?php echo $this->lang->line('class'); ?>: </b><?php echo $guardian['class'] . "(" . $guardian['section'] . ")" ?></strong><br>
                                                                <b><?php echo $this->lang->line('admission_no'); ?>: </b><?php echo $guardian['admission_no'] ?><br/>
                                                                <b><?php echo $this->lang->line('date_of_birth'); ?>:
                                                                    <?php echo date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($guardian['dob'])); ?><br>
                                                                    <b><?php echo $this->lang->line('gender'); ?>:&nbsp;</b><?php echo $guardian['gender'] ?><br>
															</address>
														</div>
														<div class="col-xs-6 col-md-6">
															<b><?php echo $this->lang->line('local_identification_no'); ?>:&nbsp;</b><?php echo $guardian['samagra_id'] ?><br>
															<b><?php echo $this->lang->line('guardian_name'); ?>:&nbsp;</b><?php echo $guardian['father_name'] ?><br>
															<b><?php echo $this->lang->line('guardian_phone'); ?>: </b> <abbr title="Phone"><i class="fa fa-phone-square"></i>&nbsp;</abbr> <?php echo $guardian['guardian_phone'] ?><br>
															<b><?php echo $this->lang->line('current_address'); ?>:&nbsp;</b><?php echo $guardian['current_address'] ?> <?php echo $guardian['city'] ?><br>
														</div>
													</div>
												</div>
												<div class="slide-footer">
													<span class="pull-right buttons">
														<a href="<?php echo base_url(); ?>guardian/view/<?php echo $guardian['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="Show" >
															<i class="fa fa-reorder"></i>
														</a>
														<a href="<?php echo base_url(); ?>guardian/edit/<?php echo $guardian['id'] ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="Edit">
															<i class="fa fa-pencil"></i>
														</a>
														<a href="<?php echo base_url(); ?>guardianfee/addfee/<?php echo $guardian['id'] ?>" class="btn btn-default btn-xs" data-toggle="tooltip" title="" data-original-title="Add Fee">    
															<?php echo $currency_symbol; ?>
														</a>
													</span>
												</div>
											</div>
										</div>
										<?php
									}
									$count++;
								} */
								?>
							</div>                                                          
						</div>                                                         
					</div>
					<?php
				}
				?>
			</div>  
		</div> 
	</section>
</div>
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
	});
</script>