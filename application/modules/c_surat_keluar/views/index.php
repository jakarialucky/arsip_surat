<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card card-custom gutter-b">
      <!-- <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-header flex-wrap py-3">
        <div class="mb-2">
          <a href="<?= url("c_surat_keluar/add") ?>" class="btn btn-sm btn-success btn-icon-text"><i class="fa fa-file btn-icon-prepend"></i><?= cclang("add_new") ?></a>
          <button type="button" id="reload" class="btn btn-sm btn-info-2 btn-icon-text"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> <?= cclang("reload") ?></button>
          <a href="<?= url("c_surat_keluar/filter/") ?>" id="filter-show" class="btn btn-sm btn-primary btn-icon-text"><i class="mdi mdi-magnify btn-icon-prepend"></i> Filter</a>
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
              <input type="text" id="pengirim" class="form-control form-control-sm" placeholder="Pengirim" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="kepada" class="form-control form-control-sm" placeholder="Kepada" />
            </div>

            <div class="form-group col-md-6">
              <!--
                          app_helper.php - methode is_select
                          is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
                        --->
              <?= is_select_filter("tb_jenis_surat", "id_jenis_surat", "id_jenis_surat", "jenis_surat", "Jenis Surat"); ?>
            </div>

            <div class="form-group col-md-6">
              <select class="form-control form-control-sm select2" data-placeholder=" -- Select Sifat surat -- " name="sifat_surat" id="sifat_surat">
                <option value=""></option>
                <option value="umum">Umum</option>
                <option value="rahasia">Rahasia</option>
              </select>
            </div>

            <div class="form-group col-md-6">
              <!--
                          app_helper.php - methode is_select
                          is_select("table", "attribute`id & name`", "value", "label", "entry_value`optional`");
                        --->
              <?= is_select_filter("auth_user", "id_petugas", "id_user", "name", "Petugas"); ?>
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="deskripsi" class="form-control form-control-sm" placeholder="Deskripsi" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="berkas_surat_keluar" class="form-control form-control-sm" placeholder="Berkas surat keluar" />
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
              <th><?= strtoupper("Pengirim") ?>
              <th><?= strtoupper("Kepada") ?>
              <th><?= strtoupper("Jenis Surat") ?>
              <th><?= strtoupper("Sifat surat") ?>
              <th><?= strtoupper("Petugas") ?>
              <th><?= strtoupper("Deskripsi") ?>
              <th><?= strtoupper("Berkas surat keluar") ?>
              <th data-priority="2"><?= strtoupper("Aksi") ?>
            </tr>
          </thead>

        </table>

      </div>
    </div>
  </div>
</div>




<script type="text/javascript">
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
        "url": "<?= url("c_surat_keluar/json") ?>",
        "type": "POST",
        "data": function(data) {
          data.no_surat = $("#no_surat").val();
          data.tgl_surat = $("#tgl_surat").val();
          data.perihal = $("#perihal").val();
          data.pengirim = $("#pengirim").val();
          data.kepada = $("#kepada").val();
          data.id_jenis_surat = $("#id_jenis_surat").val();
          data.sifat_surat = $("#sifat_surat").val();
          data.id_petugas = $("#id_petugas").val();
          data.deskripsi = $("#deskripsi").val();
          data.berkas_surat_keluar = $("#berkas_surat_keluar").val();
        }
      },

      //Set column definition initialisation properties.
      "columnDefs": [

        {
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
          "className": "text-center",
          "orderable": false,
          "targets": 10
        },
      ],
    });

    $("#reload").click(function() {
      $("#no_surat").val("");
      $("#tgl_surat").val("");
      $("#perihal").val("");
      $("#pengirim").val("");
      $("#kepada").val("");
      $("#id_jenis_surat").val("");
      $("#sifat_surat").val("");
      $("#id_petugas").val("");
      $("#deskripsi").val("");
      $("#berkas_surat_keluar").val("");
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