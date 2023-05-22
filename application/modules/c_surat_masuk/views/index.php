<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card card-custom gutter-b">
      <!-- <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->

      <div class="card-header flex-wrap py-3">
        <div class="mb-2">
          <a href="<?= url("c_surat_masuk/add") ?>" class="btn btn-sm btn-success btn-icon-text"><i class="fa fa-file btn-icon-prepend"></i><?= cclang("add_new") ?></a>
          <button type="button" id="reload" class="btn btn-sm btn-info-2 btn-icon-text"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> <?= cclang("reload") ?></button>
          <a href="<?= url("c_surat_masuk/filter/") ?>" id="filter-show" class="btn btn-sm btn-primary btn-icon-text"><i class="mdi mdi-magnify btn-icon-prepend"></i> Filter</a>
        </div>
        <form autocomplete="off" class="content-filter" style="display: none;">
          <div class="row">
            <div class="form-group col-md-6">
              <input type="text" id="no_surat" class="form-control form-control-sm" placeholder="No surat" />
            </div>

            <div class="form-group col-md-6">
              <input type="date" id="tgl_surat" class="form-control form-control-sm" placeholder="Tanggal Surat" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="perihal" class="form-control form-control-sm" placeholder="Perihal" />
            </div>

            <div class="form-group col-md-6">
              <!--
                          app_helper.php - methode is_select
                          is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
                        --->
              <?= is_select_filter("tb_jenis_surat", "id_jenis_surat", "id_jenis_surat", "jenis_surat", "Jenis Surat"); ?>
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="pengirim" class="form-control form-control-sm" placeholder="Pengirim" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="ditujukan" class="form-control form-control-sm" placeholder="Ditujukan" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="deskripsi" class="form-control form-control-sm" placeholder="Deskripsi" />
            </div>

            <div class="form-group col-md-6">
              <!--
                          app_helper.php - methode is_select
                          is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
                        --->
              <?= is_select_filter("auth_user", "id_petugas", "id_user", "name", "Id petugas"); ?>
            </div>

            <div class="form-group col-md-6">
              <select class="form-control form-control-sm " data-placeholder=" -- Select Sifat surat -- " name="sifat_surat" id="sifat_surat">
                <option value=""> -- Select Sifat surat --</option>
                <option value="umum">Umum</option>
                <option value="rahasia">rahasia</option>
              </select>
            </div>

            <div class="form-group col-md-6">
              <select class="form-control form-control-sm " data-placeholder=" -- Select Status disposisi -- " name="status_disposisi" id="status_disposisi">
                <option value=""> -- Select Status disposisi -- </option>
                <option value="belum disposisi">0</option>
                <option value="telah disposisi">1</option>
              </select>
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="berkas_surat_masuk" class="form-control form-control-sm" placeholder="Berkas surat masuk" />
            </div>

            <div class="col-md-12">
              <button type='button' class='btn btn-default btn-sm' id="filter-cancel"><?= cclang("cancel") ?></button>
              <button type="button" class="btn btn-primary btn-sm" id="filter">Filter</button>
            </div>
          </div>
        </form>
      </div>
      <div class="card-body">




        <table class="table table-bordered table-striped dt-responsive nowrap" id="table" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
          <thead>
            <tr>
              <th data-priority="1"><?= strtoupper("No surat") ?>
              <th><?= strtoupper("Tanggal Surat") ?>
              <th><?= strtoupper("Perihal") ?>
              <th><?= strtoupper("Jenis Surat") ?>
              <th><?= strtoupper("Pengirim") ?>
              <th><?= strtoupper("Ditujukan") ?>
              <th><?= strtoupper("Deskripsi") ?>
              <th><?= strtoupper("Petugas") ?>
              <th><?= strtoupper("Sifat surat") ?>
              <th data-priority="3"><?= strtoupper("Status disposisi") ?>
              <th><?= strtoupper("Berkas surat masuk") ?>
              <th data-priority="2"><?= strtoupper("Aksi") ?>
            </tr>
          </thead>

        </table>

      </div>
    </div>
  </div>
</div>

<!-- Modal Disposisi-->
<!-- <button type="button" class="btn btn-primary" id="tombol">
  Launch demo modal
</button> -->
<div class="modal fade" id="modal_disposisi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form action="<?= url("c_surat_masuk/add_disposisi") ?>" id="form_modal">
        <div class="modal-header">
          <h5 class="modal-title" id="modal_disposisiLabel">Disposisi</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i aria-hidden="true" class="ki ki-close"></i>
          </button>
        </div>
        <div class="modal-body">
          <div class="mb-15">
            <input type="text" class="d-none" id="id_surat_dispos" name="id_surat_dispos">
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Prihal</label>
              <label class="col-lg-9 col-form-label" id="prihal">SAASASSSS </label>
            </div>
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Dari </label>
              <label class="col-lg-9 col-form-label" id="dari">SAASASSSS </label>
            </div>
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Kepada</label>
              <div class="col-lg-9">
                <input type="input" class="form-control" placeholder="Kepada" name="kepada" id="kepada">
                <span class="form-text text-muted">Please enter your full name</span>
              </div>
            </div>
            <div class="form-group row">
              <label class="col-lg-3 col-form-label">Isi Disposisi</label>
              <div class="col-lg-9">
                <textarea type="text" class="form-control" placeholder="Isi Disposisi" name="isi" id="isi"></textarea>
                <span class="form-text text-muted">We'll never share your email with anyone else</span>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light-primary font-weight-bold" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary font-weight-bold">Save changes</button>
        </div>
      </form>
    </div>
  </div>
</div>


<script type="text/javascript">
  $("#form_modal").submit(function(e) {
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
            .html('Save');
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

  $("#tombol").click(function() {
    //Fungsi yang akan dijalankan ketika tombol diklik
    // alert("Tombol telah diklik");
    $('#modal_disposisi').modal('show');
  });
  // $('#modal_disposisi').show();
  // alert('WORK');
  $(document).ready(function() {

    var table;
    //datatables

    table = $('#table').DataTable({

      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "order": [], //Initial no order.
      "ordering": true,
      "searching": false,
      "info": true,
      "bLengthChange": false,
      oLanguage: {
        sProcessing: '<i class="fa fa-spinner fa-spin fa-fw"></i> Loading...'
      },

      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?= url("c_surat_masuk/json") ?>",
        "type": "POST",
        "data": function(data) {
          data.no_surat = $("#no_surat").val();
          data.tgl_surat = $("#tgl_surat").val();
          data.perihal = $("#perihal").val();
          data.id_jenis_surat = $("#id_jenis_surat").val();
          data.pengirim = $("#pengirim").val();
          data.ditujukan = $("#ditujukan").val();
          data.deskripsi = $("#deskripsi").val();
          data.id_petugas = $("#id_petugas").val();
          data.sifat_surat = $("#sifat_surat").val();
          data.status_disposisi = $("#status_disposisi").val();
          data.berkas_surat_masuk = $("#berkas_surat_masuk").val();
        }
      },

      //Set column definition initialisation properties.
      "columnDefs": [{
          "targets": 0,
          "orderable": false
        },

        {
          "targets": 1,
          "orderable": false
        },

        {
          "targets": 2,
          "orderable": false
        },

        {
          "targets": 3,
          "orderable": false
        },

        {
          "targets": 4,
          "orderable": false
        },

        {
          "targets": 5,
          "orderable": false
        },

        {
          "targets": 6,
          "orderable": false
        },

        {
          "targets": 7,
          "orderable": false
        },

        {
          "targets": 8,
          "orderable": false
        },

        {
          "targets": 9,
          "orderable": false
        },

        {
          "targets": 10,
          "orderable": false
        },

        {
          "className": "text-center",
          "orderable": false,
          "targets": 11
        },
      ],
    });
    $('#table tbody').on('click', '#disposisi', function() {
      var data = table.row($(this).parents('tr')).data();
      clear_modal();
      $("#id_surat_dispos").val($(this).data('id'));
      $("#prihal").text(data[2]);
      $("#dari").text(data[4]);
      $("#kepada").val(data[5]);
      $('#modal_disposisi').modal('show');
      // console.log(data);
      // alert(data);
    });

    function clear_modal() {
      $("#id_surat_dispos").val('');
      $("#kepada").val('');
      $("#isi").val('');
      $("#prihal").text('');
      $("#dari").text('');
    }

    $("#reload").click(function() {
      $("#no_surat").val("");
      $("#tgl_surat").val("");
      $("#perihal").val("");
      $("#id_jenis_surat").val("");
      $("#pengirim").val("");
      $("#ditujukan").val("");
      $("#deskripsi").val("");
      $("#id_petugas").val("");
      $("#sifat_surat").val("");
      $("#status_disposisi").val("");
      $("#berkas_surat_masuk").val("");
      table.ajax.reload();
    });

    $(document).on("click", "#filter-show", function(e) {
      e.preventDefault();
      $(".content-filter").slideDown();
    });

    $(document).on("click", "#filter", function(e) {
      e.preventDefault();
      $("#table").DataTable().ajax.reload();
    })

    $(document).on("click", "#filter-cancel", function(e) {
      e.preventDefault();
      $(".content-filter").slideUp();
    });

    $(document).on("click", "#delete", function(e) {
      e.preventDefault();
      $('.modal-dialog').addClass('modal-sm');
      $("#modalTitle").text('<?= cclang("confirm") ?>');
      $('#modalContent').html(`<p class="mb-4"><?= cclang("delete_description") ?></p>
                              <button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><?= cclang("cancel") ?></button>
                              <button type='button' class='btn btn-primary btn-sm' id='ya-hapus' data-id=` + $(this).attr('alt') + `  data-url=` + $(this).attr('href') + `><?= cclang("delete_action") ?></button>
                              `);
      $("#modalGue").modal('show');
    });


    $(document).on('click', '#ya-hapus', function(e) {
      $(this).prop('disabled', true)
        .text('Processing...');
      $.ajax({
        url: $(this).data('url'),
        type: 'POST',
        cache: false,
        dataType: 'json',
        success: function(json) {
          $('#modalGue').modal('hide');
          // swal(json.msg, {
          //   icon:json.type_msg
          // });
          Swal.fire({
            position: "top-right",
            icon: json.type_msg,
            title: json.msg,
            showConfirmButton: false,
            timer: 1500
          });
          $('#table').DataTable().ajax.reload();
        }
      });
    });




  });
</script>