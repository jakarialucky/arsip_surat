<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <!--  <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-body">
        <form action="<?= $action ?>" id="form" autocomplete="off">

          <div class="form-group">
            <label>No surat</label>
            <input type="text" class="form-control form-control-sm" placeholder="No surat" name="no_surat" id="no_surat">
          </div>

          <div class="form-group">
            <label>Tanggal Surat</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tanggal Surat" name="tgl_surat" id="tgl_surat">
          </div>

          <div class="form-group">
            <label>Perihal</label>
            <input type="text" class="form-control form-control-sm" placeholder="Perihal" name="perihal" id="perihal">
          </div>

          <div class="form-group">
            <label>Jenis Surat</label>
            <!--
              app_helper.php - methode is_select
              is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
            --->
            <?= is_select("tb_jenis_surat", "id_jenis_surat", "id_jenis_surat", "jenis_surat"); ?>
          </div>

          <div class="form-group">
            <label>Pengirim</label>
            <input type="text" class="form-control form-control-sm" placeholder="Pengirim" name="pengirim" id="pengirim">
          </div>

          <div class="form-group">
            <label>Ditujukan</label>
            <!-- <input type="text" class="form-control form-control-sm" placeholder="Ditujukan" name="ditujukan" id="ditujukan"> -->
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="ditujukan" id="ditujukan">
              <option value=""></option>
              <option value="seksi mutu dan sumberdaya pelayanan non medik">seksi mutu dan sumberdaya pelayanan non medik</option>
              <option value="seksi perbekalahn dan pemeliharaan non medik">seksi perbekalahn dan pemeliharaan non medik</option>

            </select>
          </div>

          <div class="form-group">
            <label>Deskripsi</label>
            <input type="text" class="form-control form-control-sm" placeholder="Deskripsi" name="deskripsi" id="deskripsi">
          </div>

          <div class="form-group">
            <label>Sifat surat</label>
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="sifat_surat" id="sifat_surat">
              <option value=""></option>
              <option value="Rahasia">Rahasia</option>
              <option value="Penting">Penting</option>
              <option value="Segera">Segera</option>
              <option value="Biasa">Biasa</option>
            </select>
          </div>

          <div class="form-group">
            <label>Berkas surat masuk</label>
            <input type="file" name="img" class="file-upload-default d-none" data-id="berkas_surat_masuk" />
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-berkas_surat_masuk" data-id="berkas_surat_masuk" />
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="berkas_surat_masuk" placeholder="Berkas surat masuk" readonly name="berkas_surat_masuk" />
              <span class="input-group-append">
                <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="berkas_surat_masuk" style="display:<?= $berkas_surat_masuk != '' ? 'block' : 'none' ?>;"><i class="ti-trash"></i></button>
                <button class="file-upload-browse btn btn-primary btn-sm" data-id="berkas_surat_masuk" type="button">Select File</button>
              </span>
            </div>
            <span class="form-text text-muted">Hasil pdf max 10 mb</span>
            <div id="berkas_surat_masuk"></div>
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