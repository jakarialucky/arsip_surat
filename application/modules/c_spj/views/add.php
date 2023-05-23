<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <!--  <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-body">
        <form action="<?= $action ?>" id="form" autocomplete="off">

          <div class="form-group">
            <label>Nomor SPJ</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nomor spj" name="nomor_spj" id="nomor_spj">
          </div>

          <div class="form-group">
            <label>Tanggal surat SPJ</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tanggal surat spj" name="tanggal_surat_spj" id="tanggal_surat_spj">
          </div>

          <div class="form-group">
            <label>No invoice</label>
            <input type="text" class="form-control form-control-sm" placeholder="No invoice" name="no_invoice" id="no_invoice">
          </div>

          <div class="form-group">
            <label>Uraian</label>
            <input type="text" class="form-control form-control-sm" placeholder="uraian" name="uraian" id="uraian">
          </div>

          <div class="form-group">
            <label>Jumlah uang</label>
            <input type="number" class="form-control form-control-sm" placeholder="Jumlah uang" name="jumlah_uang" id="jumlah_uang">
          </div>

          <div class="form-group">
            <label>File</label>
            <input type="file" name="img" class="file-upload-default d-none" data-id="file" />
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-file" data-id="file" />
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="file" placeholder="File" readonly name="file" />
              <span class="input-group-append">
                <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="file" style="display:<?= $file != '' ? 'block' : 'none' ?>;"><i class="ti-trash"></i></button>
                <button class="file-upload-browse btn btn-primary btn-sm" data-id="file" type="button">Select File</button>
              </span>
            </div>
            <span class="form-text text-muted">Hasil pdf max 10 mb</span>
            <div id="file"></div>
          </div>

          <input type="hidden" name="submit" value="add">

          <div class="text-right">
            <a href="<?= url($this->uri->segment(2)) ?>" class="btn btn-sm btn-danger"><?= cclang("cancel") ?></a>
            <button type="submit" id="submit" class="btn btn-sm btn-primary"><?= cclang("save") ?></button>
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