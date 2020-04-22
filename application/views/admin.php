<style>
.switch {
  position: relative;
  display: inline-block;
  width: 30px;
  height: 18px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 11px;
  width: 7px;
  left: 2px;
  bottom: 4px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #fa320f;
}

input:focus + .slider {
  box-shadow: 0 0 1px #fa320f;
}

input:checked + .slider:before {
  -webkit-transform: translateX(13px);
  -ms-transform: translateX(13px);
  transform: translateX(17px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 17px;
}

.slider.round:before {
  border-radius: 25%;
}
</style>

    <div class="content-wrapper">
    <!-- Content Header (Page header) -->

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><b>Halaman Admin</p></b> </h3>
			  <p id="time">
			  <p> <center><b>Tabel Siswa </b></center></p>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
				<tr>
                  <th>Nama</th>
                  <th>Kelas</th>				                  
                  <th>Nis</th>
				  <th>Detai</th>
                </tr>
                </thead>
                <tbody>
                  <?php $no=1; foreach ($sholat as $key => $value):  ?>
					   <tr>
							<td><?php echo $value['nama'];?></td>
							<td><?php echo $value['kelas'];?></td>
							<td><?php echo $value['nis_siswa'];?></td>
							<td><button type="button" class="btn btn-info" onclick="hapus();">Detail</button> </td>
					   </tr>
					<?php endforeach; ?>
				</tbody>
                <tfoot>
                <tr>
                  <th>Nama</th>
                  <th>Kelas</th>				                  
                  <th>Nis</th>
				  <th>Detai</th>
                </tr>
                </tfoot>
              </table>
			  <!-- /.<button type="button" class="btn btn-block btn-info">Update</button> -->
            </div>
            <!-- /.box-body -->
          </div>
          
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->

      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/dist/js/adminlte.min.js"></script>
<!-- Sparkline -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap  -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?php echo base_url(); ?>assets/AdminLTE/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/chart.js/Chart.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/dist/js/demo.js"></script>

<!-- DataTables -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script>
var table_sholat = $('#example1').DataTable({
      'paging'      : true,
      'lengthChange': true,
      'searching'   : true,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : true
    })
	
	function jam(e,id) {
        var jam = e.target.value;
		var id_act = id;
	$.ajax({
			url	     : '<?php echo site_url('welcome/update_jam_sholat')?>',
			type     : 'POST',
			dataType : 'html',
			data     : 'id_act='+id_act+'&jam='+jam,
			success  : function(respons){
				//$('#pesan_kirim').html(respons);
				
			},
		})
    }
	function checkbox(id, st, ns) {
		var id_act = id;
			var status = st;
			var sholat = ns;
		if(st==1){
			//alert("kirim data belum "+ns);
            $.ajax({
			url	     : '<?php echo site_url('welcome/update_sholat')?>',
			type     : 'POST',
			dataType : 'html',
			data     : 'id_act='+id_act+'&status='+status+'&sholat='+sholat,
			success  : function(respons){
				//$('#pesan_kirim').html(respons);
				$( "#example1" ).load( "<?php echo site_url()?> #example1" );
			},
		})
		}else{
            $.ajax({
			url	     : '<?php echo site_url('welcome/update_belum_sholat')?>',
			type     : 'POST',
			dataType : 'html',
			data     : 'id_act='+id_act+'&status='+status+'&sholat='+sholat,
			success  : function(respons){
				//$('#pesan_kirim').html(respons);
				$( "#example1" ).load( "<?php echo site_url()?> #example1" );
			},
		})
		}
	}
	
	function haid(id, st, ns) {
		var id_act = id;
			var status = st;
			var sholat = ns;
		if(st==1){
			//alert("kirim data belum "+ns);
            $.ajax({
			url	     : '<?php echo site_url('welcome/update_sholat_haid')?>',
			type     : 'POST',
			dataType : 'html',
			data     : 'id_act='+id_act+'&status='+status+'&sholat='+sholat,
			success  : function(respons){
				//$('#pesan_kirim').html(respons);
				$( "#example1" ).load( "<?php echo site_url()?> #example1" );
			},
		})
		$("#chb"+id_act).prop('disabled', false);
		}else{
            $.ajax({
			url	     : '<?php echo site_url('welcome/update_sholat_tidak_haid')?>',
			type     : 'POST',
			dataType : 'html',
			data     : 'id_act='+id_act+'&status='+status+'&sholat='+sholat,
			success  : function(respons){
				//$('#pesan_kirim').html(respons);
				$( "#example1" ).load( "<?php echo site_url()?> #example1" );
			},
		})
		$("#chb"+id_act).prop('disabled', true);
		}
	}
	//sampai sini
var timestamp = '<?=time();?>';
function updateTime(){
  $('#time').html(Date(timestamp));
  timestamp++;
}
$(function(){
  setInterval(updateTime, 1000);
});
</script>

</body>
</html>
