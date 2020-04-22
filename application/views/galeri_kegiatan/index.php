  <div class="content-wrapper">
  <style type="text/css">
    .img-kegiatan{
        width: 95%;
        height: 280px;
        object-fit: cover;
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
              <h3 class="box-title"><b>Galeri Kegiatan</p></b> </h3>
              <a href="<?=site_url('galeri/form')?>" target="_blank" class="btn btn-info pull-right"><i class="fa fa-plus"></i> Tambah Foto</a>
            </div>
          </div>

          <div class="col-xs-12">
          	<?php foreach ($data as $key => $value): ?>
              <div class="col-xs-12 col-md-3">
                <!-- Box Comment -->
                <div class="box box-widget" style="height: 433px!important;">
                  <!-- /.box-header -->
                  <div class="box-body">
                    <span><?=$value['waktu'] ?></span><br/><br/>
                    <center>
                      <img class="img-kegiatan" onclick="showDetail(<?=$value['id'] ?>)" class="img-responsive pad" src="<?=base_url('assets/upload/').$value['foto']?>" alt="Photo"><hr/>
                    </center>
                    <p><?php echo !empty($value['keterangan'])? $value['keterangan'] : '-'; ?></p>
                    <button type="button" class="btn bg-red btn-xs pull-right" onclick="showDeleteModal(<?=$value['id'] ?>)"><i class="fa fa-trash"></i> Delete</button>
                  </div>
                </div>
              </div>
          	<?php endforeach; ?>
              <!-- /.box -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <!-- MODAL -->
        <div class="modal fade" id="modal-delete">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Hapus kegiatan</h4>
              </div>
              <div class="modal-body">
                <p>Apakah anda yakin ingin menghapus data ini?</p>
              </div>
              <div class="modal-footer" align="center">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                <button type="button" class="btn bg-red" onclick="deleteAction()"><i class="fa fa-trash"></i> Hapus</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->

        </div>

        <div class="modal fade" id="modal-detail">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Detail kegiatan</h4>
              </div>
              <div class="modal-body">
                <div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold; width: 100px;">Keterangan</div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold; margin-left: 2%;">:</div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold; margin-left: 1%;" id="det_keterangan"></div>
                </div>
                <div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold; width: 100px;">Waktu</div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold; margin-left: 2%;">:</div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold;" id="det_waktu"></div>
                </div>
                <div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold; width: 100px;">Foto</div>
                  <div style="display: inline-block!important; font-size: 15px; font-weight: bold; margin-left: 2%;">:</div>
                  <div align="center"><br/>
                    <img id="det_foto" src="#" style="width: 95%" />
                  </div>
                </div>
              </div>
              <div class="modal-footer" align="center">
                <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->

        </div>

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
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/dist/js/demo.js"></script>

<script type="text/javascript">
  var my_id = undefined;
   var urls = {
      base: "<?=site_url(); ?>",
      delete: "<?=site_url('galeri/delete_foto'); ?>",
      detail: "<?=site_url('galeri/detail_foto'); ?>",
      upload_dir: "<?=base_url('assets/upload/'); ?>",
    }

  function showDeleteModal(id) {
    my_id = id;
    $('#modal-delete').modal('show');
  }

  function deleteAction() {
    $.get(urls.delete+'/'+my_id, function(res){
      var results = JSON.parse(res);
      $('#modal-delete').modal('hide');
      if(results.success){
        window.open(urls.base+'/galeri', '_self');
      }else{
        alert(results.error);
      }
    });
  }

  function showDetail(id){
    $.get(urls.detail+'/'+id, function(res){
      var results = JSON.parse(res);

      $('#det_keterangan').text(!isEmpty(results.keterangan)?results.keterangan:'-');
      $('#det_waktu').text(results.waktu);
      $('#det_foto').attr('src', urls.upload_dir+results.foto);

      $('#modal-detail').modal('show');
    });
  }

  function isEmpty(str) {
      return ( (typeof(str) == "undefined") || (!str || /^\s*$/.test(str)) || parseInt(str) == 0 || str == null);
  }
</script>

</body>
</html>
