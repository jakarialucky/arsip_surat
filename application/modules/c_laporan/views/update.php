<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <!-- <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-body">
        <form action="<?= $action ?>" id="form" autocomplete="off">

          <div class="form-group">
            <label>Nomor rba</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nomor rba" name="nomor_rba" id="nomor_rba" value="<?= $nomor_rba ?>">
          </div>

          <div class="form-group">
            <label>Tanggal rba</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tanggal rba" name="tanggal_rba" id="tanggal_rba" value="<?= $tanggal_rba ?>">
          </div>

          <div class="form-group">
            <label>Nama rba</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama rba" name="nama_rba" id="nama_rba" value="<?= $nama_rba ?>">
          </div>

          <div class="form-group">
            <label>No rekening kegiatan rba</label>
            <input type="text" class="form-control form-control-sm" placeholder="No rekening kegiatan rba" name="no_rekening_kegiatan_rba" id="no_rekening_kegiatan_rba" value="<?= $no_rekening_kegiatan_rba ?>">
          </div>

          <div class="form-group">
            <label>Berkas rba</label>
            <input type="file" name="img" class="file-upload-default d-none" data-id="berkas_rba" />
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-berkas_rba" data-id="berkas_rba" />
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="berkas_rba" placeholder="Berkas rba" readonly name="berkas_rba" value="<?= $berkas_rba ?>" />
              <span class="input-group-append">
                <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="berkas_rba" style="display:<?= $berkas_rba != '' ? 'block' : 'none' ?>;"><i class="ti-trash"></i></button>
                <button class="file-upload-browse btn btn-primary btn-sm" data-id="berkas_rba" type="button">Select File</button>
              </span>
            </div>
            <div id="berkas_rba"></div>
          </div>

          <input type="hidden" name="submit" value="update">

          <div class="text-right">
            <a href="<?= url($this->uri->segment(2)) ?>" class="btn btn-sm btn-danger"><?= cclang("cancel") ?></a>
            <button type="submit" id="submit" class="btn btn-sm btn-primary"><?= cclang("update") ?></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">
  $("#form").submit(function(e) {
    e.preventDefault();
    var me = $(this);
    $("#submit").prop('disabled', true).html('Loading...');
    $(".form-group").find('.text-danger').remove();
    $.ajax({
      url: me.attr('action'),
      type: 'post',
      data: new FormData(this),
      contentType: false,
      cache: false,
      dataType: 'JSON',
      processData: false,
      success: function(json) {
        if (json.success == true) {
          location.href = json.redirect;
          return;
        } else {
          $("#submit").prop('disabled', false)
            .html('<?= cclang("save") ?>');
          $.each(json.alert, function(key, value) {
            var element = $('#' + key);
            $(element)
              .closest('.form-group')
              .find('.text-danger').remove();
            $(element).after(value);
          });
        }
      }
    });
  });
</script>