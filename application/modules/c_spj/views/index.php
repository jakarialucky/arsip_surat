<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card card-custom gutter-b">
      <!-- <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-header flex-wrap py-3">
        <div class="mb-2">
          <a href="<?= url("c_spj/add") ?>" class="btn btn-sm btn-success btn-icon-text"><i class="fa fa-file btn-icon-prepend"></i><?= cclang("add_new") ?></a>
          <button type="button" id="reload" class="btn btn-sm btn-info-2 btn-icon-text"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> <?= cclang("reload") ?></button>
          <a href="<?= url("c_spj/filter/") ?>" id="filter-show" class="btn btn-sm btn-primary btn-icon-text"><i class="mdi mdi-magnify btn-icon-prepend"></i> Filter</a>
        </div>
        <form autocomplete="off" class="content-filter" style="display: none;">
          <div class="row">
            <div class="form-group col-md-6">
              <input type="text" id="nomor_spj" class="form-control form-control-sm" placeholder="Nomor spj" />
            </div>

            <div class="form-group col-md-6">
              <input type="date" id="tanggal_surat_spj" class="form-control form-control-sm" placeholder="Tanggal surat spj" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="no_invoice" class="form-control form-control-sm" placeholder="No invoice" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="nama_pembayar" class="form-control form-control-sm" placeholder="Nama pembayar" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="jumlah_uang" class="form-control form-control-sm" placeholder="Jumlah uang" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="file" class="form-control form-control-sm" placeholder="File" />
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
              <th><?= strtoupper("Nomor spj") ?>
              <th><?= strtoupper("Tanggal surat spj") ?>
              <th><?= strtoupper("No invoice") ?>
              <th><?= strtoupper("Nama pembayar") ?>
              <th><?= strtoupper("Jumlah uang") ?>
              <th><?= strtoupper("File") ?>
              <th><?= strtoupper("Aksi") ?>
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
        "url": "<?= url("c_spj/json") ?>",
        "type": "POST",
        "data": function(data) {
          data.nomor_spj = $("#nomor_spj").val();
          data.tanggal_surat_spj = $("#tanggal_surat_spj").val();
          data.no_invoice = $("#no_invoice").val();
          data.nama_pembayar = $("#nama_pembayar").val();
          data.jumlah_uang = $("#jumlah_uang").val();
          data.file = $("#file").val();
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
          "className": "text-center",
          "orderable": false,
          "targets": 6
        },
      ],
    });

    $("#reload").click(function() {
      $("#nomor_spj").val("");
      $("#tanggal_surat_spj").val("");
      $("#no_invoice").val("");
      $("#nama_pembayar").val("");
      $("#jumlah_uang").val("");
      $("#file").val("");
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