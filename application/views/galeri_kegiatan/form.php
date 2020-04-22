<div class="content-wrapper">
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">

          <div class="box">
            <div class="box-header">
              <h3 class="box-title"><b>Form Tambah Kegiatan</p></b> </h3>
            </div>
            <div class="box-body">
              <form method="post" action="" enctype="multipart/form-data" id="myform">
                <div class="col-md-3"></div>
                <div class="col-xs-12 col-md-6">
                  <div class="form-group row">
                    <div class="col-md-2 col-xs-3">
                      <label style="font-size: 17px; vertical-align: sub;">
                        Keterangan
                      </label>
                    </div>
                    <div class="col-xs-8 col-xs-9">
                      :<input style="width:90% ;" id="form_keterangan" type="text" class="form-control pull-right" placeholder="Silahkan masukan keterangan...">
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-2 col-xs-3">
                      <label style="font-size: 17px; vertical-align: sub;">Waktu</label>
                    </div>
                    <div class="col-md-8 col-xs-9">
                      :<label style="font-size: 17px; vertical-align: sub; margin-left: 10%"><?=date_create($now)->format('l, d F Y'); ?></label>
                      <input type="hidden" id="form_waktu" value="<?=$now ?>" />
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-2 col-xs-3">
                      <label style="font-size: 17px; vertical-align: sub;">Foto Kegiatan</label>
                    </div>
                    <div class="col-md-8 col-xs-9">
                      :
                    </div>
                  </div>
                </div>
                <div class="col-xs-12" align="center" style="margin-bottom: 3%; ">
                  <div id="my_camera"></div><br/>
                  <span style="font-size: 15px; font-weight: bold">Or</span>
                  <div class="hidden-" style="margin-top: 13px;">
                    <input style="
                      border: 1px solid #ccc;
                      padding: 5px;
                      box-shadow: 3px 5px 11px -1px rgb(158, 158, 158);
                      border-radius: 5px;
                    " type="file" id="form_file" name="webcam" accept="image/*;capture=camera" onchange="changeFile()">
                  </div>
                </div>
              </form>
            </div>
            <div class="box-footer">
              <div align="center">
                <a href="<?=site_url('galeri'); ?>" class="btn btn-lg btn-default btn-pre">Batal</a>
                <button type="button" class="btn btn-lg btn-post" onclick="cancel_preview()">Ulangi</button>&nbsp;
                <button type="button" class="btn btn-lg bg-navy btn-pre" onclick="do_preview()">Take a photo</button>
                <button type="button" class="btn btn-lg btn-info btn-post" onclick="do_upload()">Upload</button>
              </div>
            </div>
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
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url(); ?>assets/AdminLTE/dist/js/demo.js"></script>
<!-- webcam js -->
<script type="text/javascript" src="<?php echo base_url() ?>assets/webcamjs/webcam.min.js"></script>
<script>
    var urls = {
      base: "<?=site_url(); ?>",
      save: "<?=site_url('galeri/upload_foto'); ?>",
    }

    $(function(){

      $('.btn-pre').show();
      $('.btn-post').hide();


      if(isMobileDevice()){
        Webcam.set({
          width: 640,
          height: 400,
          dest_width: 640,
          dest_height: 400,
          crop_width: 280,
          crop_height: 400,
          image_format: 'jpeg',
          jpeg_quality: 90,
          flip_horiz: true
        });
      }else{
        Webcam.set({
          width: 640,
          height: 480,
          dest_width: 640,
          dest_height: 480,
          crop_width: 100,
          crop_height: 480,
          image_format: 'jpeg',
          jpeg_quality: 90,
          flip_horiz: true
        });
      }

      Webcam.attach( '#my_camera' );
    });

    function cancel_preview() {
      if(!isEmpty($('#form_file').val())){
        $('#form_file').val('');
        $('.btn-pre').fadeIn();
        $('.btn-post').hide();
      }else{
        $.when(Webcam.unfreeze()).then(function(){
          $('.btn-post').hide();
          $('.btn-pre').fadeIn();
        });
      }
    }

    function do_preview() {
      if(isMobileDevice()){
        Webcam.set({
          width: 300,
          height: 400,
          dest_width: 300,
          dest_height: 400,
          image_format: 'jpeg',
          jpeg_quality: 90,
          flip_horiz: true
        });
      }

      Webcam.snap( function(data_uri) {
        $.when(Webcam.freeze()).then(function(){
          $('.btn-pre').hide();
          $('.btn-post').fadeIn();
        });

      });
    }

    function do_upload() {
      if(!isEmpty($('#form_file').val())){
          var fd = new FormData();
          var files = $('#form_file')[0].files[0];
          fd.append('webcam',files);

          var data = {
            user: '1',
            keterangan: $('#form_keterangan').val(),
            waktu: $('#form_waktu').val(),
          }   

          $.ajax({
              url: urls.save + '?' + $.param(data),
              type: 'post',
              data: fd,
              contentType: false,
              processData: false,
              success: function(res){
                results = JSON.parse(res);

                if(results.success){
                    window.open(urls.base+'/galeri', '_self');
                }else{
                    alert(results.error);
                }
              },
          });
      }else{
        Webcam.snap(function(data_uri){
          
          var data = {
            user: '1',
            keterangan: $('#form_keterangan').val(),
            waktu: $('#form_waktu').val(),
          }        

          Webcam.upload(data_uri, urls.save+'?'+ $.param(data), function(code,text){
            if(code == 200){
              results = JSON.parse(text);

              if(results.success>0){
                window.open(urls.base+'/galeri', '_self');
              }else{
                alert(results.error);
              }
              
            }else{
              alert('Upload foto gagal');
            }
          });
        });
      }
    }

    function isMobileDevice() {
        return (typeof window.orientation !== "undefined") || (navigator.userAgent.indexOf('IEMobile') !== -1);
    };

    function changeFile() {
      if(!isEmpty($('#form_file').val())){
            $('.btn-pre').hide();
            $('.btn-post').fadeIn();
      }else{
            $('.btn-pre').fadeIn();
            $('.btn-post').hide();
      }
    }

    function isEmpty(str) {
        return ( (typeof(str) == "undefined") || (!str || /^\s*$/.test(str)) || parseInt(str) == 0 || str == null);
    }

  </script>

</body>
</html>
