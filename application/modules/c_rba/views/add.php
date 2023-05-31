<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <!--  <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-body">
        <form action="<?= $action ?>" id="form" autocomplete="off">

          <div class="form-group">
            <label>Perubahan Ke</label>
            <input type="text" class="form-control form-control-sm" placeholder="perubahan ke" name="perubahan_ke" id="perubahan_ke">
          </div>

          <div class="form-group">
            <label>Tanggal RBA</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tanggal rba" name="tanggal_rba" id="tanggal_rba">
          </div>

          <div class="form-group">
            <label>Nama RBA</label>
            <!-- <input type="text" class="form-control form-control-sm" placeholder="Nama rba" name="nama_rba" id="nama_rba"> -->

            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="nama_rba" id="nama_rba">
              <option value=""></option>
              <option value="Pengelola data dan informasi kesehatan">Pengelola data dan informasi kesehatan</option>
              <!-- <option value="Perbekalan">Perbekalan</option> -->

            </select>
          </div>

          <div class="form-group">
            <label>No rekening kegiatan rba</label>
            <!-- <input type="text" class="form-control form-control-sm" placeholder="No rekening kegiatan rba" name="no_rekening_kegiatan_rba" id="no_rekening_kegiatan_rba"> -->
            <select class="form-control form-control-sm select2" data-placeholder=" -- Select -- " name="no_rekening_kegiatan_rba" id="no_rekening_kegiatan_rba">
              <option value=""></option>
              <option value="02.01.02.03.11">02.01.02.03.11</option>
              <!-- <option value="Perbekalan">Perbekalan</option> -->

            </select>
          </div>

          <div class="form-group">
            <label>Berkas RBA</label>
            <input type="file" name="img" class="file-upload-default d-none" data-id="berkas_rba" />
            <div class="input-group col-xs-12">
              <input type="hidden" class="file-dir" name="file-dir-berkas_rba" data-id="berkas_rba" />
              <input type="text" class="form-control form-control-sm file-upload-info file-name" data-id="berkas_rba" placeholder="Berkas rba" readonly name="berkas_rba" />
              <span class="input-group-append">
                <button class="btn-remove-image btn btn-danger btn-sm" type="button" data-id="berkas_rba" style="display:<?= $berkas_rba != '' ? 'block' : 'none' ?>;"><i class="ti-trash"></i></button>
                <button class="file-upload-browse btn btn-primary btn-sm" data-id="berkas_rba" type="button">Select File</button>
              </span>
            </div>
            <span class="form-text text-muted">Hasil pdf max 10 mb</span>
            <div id="berkas_rba"></div>
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