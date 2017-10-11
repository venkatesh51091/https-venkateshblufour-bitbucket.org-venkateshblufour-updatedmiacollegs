<?php $currency_symbol = $this->customlib->getSchoolCurrencyFormat(); ?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content-header">
     <h1>
        <i class="fa fa-credit-card"></i> <?php echo $this->lang->line('transport'); ?></h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-4">
                <!-- Horizontal Form -->
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><?php echo $this->lang->line('edit_vehicle_on_route'); ?></h3>
                    </div><!-- /.box-header -->
                    <form id="form1" action="<?php echo site_url('admin/vehroute/edit/' . $id) ?>"  method="post" accept-charset="utf-8">
                        <div class="box-body">


                            <?php if ($this->session->flashdata('msg')) { ?>
                            <?php echo $this->session->flashdata('msg') ?>
                            <?php } ?>
                            <?php
                            if (isset($error_message)) {
                                echo "<div class='alert alert-danger'>" . $error_message . "</div>";
                            }
                            ?>

                            <?php echo $this->customlib->getCSRF(); ?>
                            <input type="hidden" name="id" value="<?php echo set_value('id', $vehroute[0]->id); ?>" >

                            <input type="hidden" name="pre_route_id" value="<?php echo  $vehroute[0]->route_id; ?>" >
                            <?php 

                            foreach ($vehroute[0]->vehicles as $v_key => $v_value) {
                             ?>
                             <input type="hidden" name="prev_vec_route[]" value="<?php echo $v_value->id;?>">
                             <?php
                         }
                         ?>
                         <div class="form-group">
                            <label for="exampleInputEmail1"><?php echo $this->lang->line('route'); ?></label>

                            <select  id="route_id" name="route_id" class="form-control" >
                                <option value=""><?php echo $this->lang->line('select'); ?></option>
                                <?php
                                foreach ($routelist as $route) {
                                    ?>
                                    <option value="<?php echo $route['id'] ?>"<?php
                                        if (set_value('route_id',$vehroute[0]->route_id) == $route['id']) {
                                            echo "selected =selected";
                                        }
                                        ?>><?php echo $route['route_title'] ?></option>

                                        <?php

                                    }
                                    ?>
                                </select>
                                <span class="text-danger"><?php echo form_error('route_id'); ?></span>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputEmail1"><?php echo $this->lang->line('vehicle'); ?></label>


                                <?php

                                foreach ($vehiclelist as $vehicle) {

                                    ?>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="vehicle[]" value="<?php echo $vehicle['id'] ?>" <?php echo set_checkbox('vehicle[]',$vehicle['id'],check_in_array($vehicle['id'],$vehroute[0]->vehicles)); ?> ><?php echo $vehicle['vehicle_no'] ?>
                                        </label>
                                    </div>
                                    <?php
                                }
                                ?>

                                <span class="text-danger"><?php echo form_error('vehicle[]'); ?></span>
                            </div>


                        </div><!-- /.box-body -->

                        <div class="box-footer">
                            <button type="submit" class="btn btn-info pull-right"><?php echo $this->lang->line('save'); ?></button>
                        </div>
                    </form>
                </div>

            </div><!--/.col (right) -->
            <!-- left column -->
            <div class="col-md-8">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header ptbnull">
                        <h3 class="box-title titlefix"><?php echo $this->lang->line('vehicle_route_list'); ?></h3>
                        <div class="box-tools pull-right">
                        </div><!-- /.box-tools -->
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="table-responsive mailbox-messages">
                          <table class="table table-striped table-bordered table-hover example">
                            <thead>
                                <tr>

                                    <th><?php echo $this->lang->line('route'); ?>
                                    </th>
                                    <th><?php echo $this->lang->line('vehicle'); ?>
                                    </th>

                                    <th class="text-right"><?php echo $this->lang->line('action'); ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                if (empty($vehroutelist)) {
                                    ?>
                                    <tr>
                                        <td colspan="3" class="text-danger text-center"><?php echo $this->lang->line('no_record_found'); ?></td>

                                    </tr>
                                    <?php
                                } else {                                    
                                    foreach ($vehroutelist as $vehroute) {                                       
                                        ?>
                                        <tr>
                                            <td class="mailbox-name">
                                                <?php echo $vehroute->route_title; ?>

                                            </td>


                                            <td>
                                                <?php 
                                                $vehicles=$vehroute->vehicles;
                                                if(!empty($vehicles)){


                                                    foreach ($vehicles as $key => $value) {


                                                        echo "<div><b>".$value->vehicle_no."</b></div>";

                                                    }

                                                }

                                                ?>

                                            </td>
                                            <td class="mailbox-date pull-right">
                                                <a href="<?php echo base_url(); ?>admin/vehroute/edit/<?php echo $vehroute->route_id; ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('edit'); ?>">
                                                    <i class="fa fa-pencil"></i>
                                                </a>
                                                <a href="<?php echo base_url(); ?>admin/vehroute/delete/<?php echo $vehroute->route_id; ?>" class="btn btn-default btn-xs"  data-toggle="tooltip" title="<?php echo $this->lang->line('delete'); ?>" onclick="return confirm('Are you sure you want to delete this item?');">
                                                    <i class="fa fa-remove"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <?php                                         
                                    }
                                }
                                ?>

                            </tbody>
                        </table><!-- /.table -->


                    </div><!-- /.mail-box-messages -->
                </div><!-- /.box-body -->
            </div>
        </div><!--/.col (left) -->
        <!-- right column -->

    </div>
    <div class="row">
        <!-- left column -->

        <!-- right column -->
        <div class="col-md-12">

        </div><!--/.col (right) -->
    </div>   <!-- /.row -->
</section><!-- /.content -->
</div><!-- /.content-wrapper -->

<?php 

function check_in_array($find,$array){

    foreach ( $array as $element ) {
        if ( $find == $element->id ) {
         return TRUE;
     }
 }
 return FALSE;

}
?>