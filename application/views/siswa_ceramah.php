 <div class="content-wrapper">
    <!-- Content Header (Page header) -->

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

          <div class="box">
            <div class="box-header">
			  <p id="time">
			  <p> <center><b>Klik Tombol Tambah Untuk Mengisi Data Ceramah Yang Telah Kamu Tonton!!! </b></center></p>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
			<button type="button" class="btn btn-block btn-warning" data-toggle="modal" data-target="#myModal">Tambah</button>
			  <div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
				
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal">&times;</button>
					  <h4 class="modal-title"><center><b>Harap Isi Data Dengan Jujur!!!</b></center></h4>
					</div>
					<div class="modal-body">
					  <form>
					  <table id="example1" class="table table-bordered table-striped">
						<tbody> 
						  Jam : <input class="form-control" type="time" id="jam" required>
						  </br>
						  Channel TV : <input class="form-control" type="text" id="chanel" required>
						  </br>				  
						  Nama Penceramah : <input class="form-control" type="text" id="penceramah" required></br>
						  Topik Ceramah : <input class="form-control" type="text" id="topik" required></br>			
						</tbody>
					  </table>
					  <button type="submit" class="btn btn-block btn-info" onclick="tambah_data()">Tambah</button>
					  <button type="button" class="btn btn-block btn-danger" data-dismiss="modal">Batal</button>
					</form>
					</div>
					<!-- /.<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>-->
				  </div>
				  
				</div>
			  </div>
			  <div class="modal fade" id="modal_hapus" role="dialog">
			  
				<div class="modal-dialog">
				
				  <!-- Modal content-->
				  <div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal">&times;</button>
					  <h4 class="modal-title"><center><b>Yakin Ingin Menghapus Data?</b></center></h4>
					</div>
					<div class="modal-body">
					  <form>
					  <input type="hidden" id="id_hapus" value="">
					  <button type="submit" class="btn btn-block btn-danger" onclick="hapus_data()">Hapus</button>
					  <button type="button" class="btn btn-block btn-info" data-dismiss="modal">Batal</button>
					</form>
					</div>
					<!-- /.<div class="modal-footer">
					  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>-->
				  </div>
				  
				</div>

			  </div>
			<!-- /.<button type="button" class="btn btn-block btn-warning" odata-toggle="modal" data-target="#modal-default">Tambah Tadarus</button>-->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
		  
		  <div class="box">
            <div class="box-header">
              <h3 class="box-title"><b>Riwayat Menonton</p></b> </h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="tabel_tadarus" class="table table-bordered table-striped">
                <thead>
				<tr>
                  <th>Tanggal</th>
				  <th>Jam</th>				  
				  <th>Channel TV</th>				  		  
				  <th>Nama Penceramah</th>
				  <th>Topik</th>
				  <th>Aksi</th>
                </tr>
                </thead>
                <tbody>
					<?php $no=1; foreach ($ceramah as $key => $value):  ?>
					   <tr>
							<td><?php echo $value['tgl'];?></td>
							<td><?php echo $value['jam'];?></td>
							<td><?php echo $value['chanel'];?></td>
							<td><?php echo $value['nama_penceramah'];?></td>
							<td><?php echo $value['topik'];?></td>
							<td><button type="button" class="btn btn-danger" onclick="hapus(<?php echo $value['id'];?>);">Hapus</button> </td>
					   </tr>
					<?php  endforeach; ?>
				</tbody>
                <tfoot>
                <tr>
				  <th>Tanggal</th>	
				  <th>Jam</th>
				  <th>Chanel TV</th>				  		  
				  <th>Nama Penceramah</th>
				  <th>Topik</th>
				  <th>Aksi</th>
                </tr>
                </tfoot>
              </table>
            </div>
				<!-- /.modal -->
            <!-- /.box-body -->
          </div>
        </div>
        <!-- /.col -->
		
      </div>
	<!-- Modal -->
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
	function hapus(id) {
		//$("#id_hapus").text("id");
		$('#id_hapus').val(id);
		$('#modal_hapus').modal('show'); 
	}
	function tambah_data() {
		
		var jam = document.getElementById("jam").value;
		var chanel = $('#chanel').val();
		var penceramah = document.getElementById("penceramah").value;
		var topik = document.getElementById("topik").value;
		//tgl,jam,suratke,dariayat,sampaiayat
		$.ajax({
			url	     : '<?php echo site_url('ceramah/tambah')?>',
			type     : 'POST',
			dataType : 'html',
			data     : 'jam='+jam+'&chanel='+chanel+'&penceramah='+penceramah+'&topik='+topik,
			success  : function(respons){
				//$('#pesan_kirim').html(respons);
				$( "#tabel_tadarus" ).load( "<?php echo site_url('index.php/tadarus')?> #tabel_tadarus" );
			},
		})
	}
	function hapus_data() {
		var id_hapus = document.getElementById("id_hapus").value;
		//tgl,jam,suratke,dariayat,sampaiayat
		$.ajax({
			url	     : '<?php echo site_url('ceramah/hapus')?>',
			type     : 'POST',
			dataType : 'html',
			data     : 'id_hapus='+id_hapus,
			success  : function(respons){
				//$('#pesan_kirim').html(respons);
				$( "#tabel_tadarus" ).load( "<?php echo site_url('index.php/tadarus')?> #tabel_tadarus" );
			},
		})
	}

  $(function () {
    $('#tabel_tadarus').DataTable({
      'paging'      : true,
      'lengthChange': true,
      'searching'   : false,
      'ordering'    : false,
      'info'        : false,
      'autoWidth'   : false
    })
  })
   
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
