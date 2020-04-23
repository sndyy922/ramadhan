<style type="text/css">
.img-kegiatan{
    width: 95%;
    height: 250px;
    object-fit: cover;
    cursor: pointer;
}
</style>
<div class="row">
<div class="col-xs-12" style="margin-top: 1%">
	<?php foreach ($list_galeri as $key => $value): ?>
      <div class="col-xs-12 col-md-3">
        <!-- Box Comment -->
        <div class="box box-widget" style="height: 100%!important; box-shadow: 2px 3px 30px -11px rgba(128,128,128,1); border: 1px solid #eee; border-radius: 5px;">
          <!-- /.box-header -->
          <div class="box-body">
            <span><?=$value['waktu'] ?></span><br/><br/>
            <center>
              <img class="img-kegiatan" onclick="showDetail(<?=$value['id'] ?>)" class="img-responsive pad" src="<?=base_url('assets/upload/').$value['foto']?>" alt="Photo"><hr/>
            </center>
            <p><?php echo !empty($value['keterangan'])? $value['keterangan'] : '-'; ?></p>
          </div>
        </div>
      </div>
  	<?php endforeach; ?>
</div>
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

<script type="text/javascript">
 var urls = {
    detail: "<?=site_url('galeri/detail_foto'); ?>",
    base: "<?=site_url(); ?>",
    upload_dir: "<?=base_url('assets/upload/'); ?>",
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