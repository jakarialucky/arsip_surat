<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card card-custom gutter-b">
      <!-- <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-header flex-wrap py-3">
        <div class="mb-2">
          <a href="<?= url("c_rba/add") ?>" class="btn btn-sm btn-success btn-icon-text"><i class="fa fa-file btn-icon-prepend"></i><?= cclang("add_new") ?></a>
          <button type="button" id="reload" class="btn btn-sm btn-info-2 btn-icon-text"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> Reload</button>
          <a href="<?= url("c_rba/filter/") ?>" id="filter-show" class="btn btn-sm btn-primary btn-icon-text"><i class="mdi mdi-magnify btn-icon-prepend"></i> Filter</a>
        </div>
        <form autocomplete="off" class="content-filter" style="display: none;">
          <div class="row">
            <div class="form-group col-md-6">
              <input type="text" id="nomor_rba" class="form-control form-control-sm" placeholder="Nomor rba" />
            </div>

            <div class="form-group col-md-6">
              <input type="date" id="tanggal_rba" class="form-control form-control-sm" placeholder="Tanggal rba" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="nama_rba" class="form-control form-control-sm" placeholder="Nama rba" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="no_rekening_kegiatan_rba" class="form-control form-control-sm" placeholder="No rekening kegiatan rba" />
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="berkas_rba" class="form-control form-control-sm" placeholder="Berkas rba" />
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
              <th><?= strtoupper("Perubahan Ke") ?>
              <th><?= strtoupper("Tanggal rba") ?>
              <th><?= strtoupper("Nama rba") ?>
              <th><?= strtoupper("No rekening kegiatan rba") ?>
              <th><?= strtoupper("Berkas rba") ?>
              <th><?= strtoupper("AKSI") ?>
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
        "url": "<?= url("c_rba/json") ?>",
        "type": "POST",
        "data": function(data) {
          data.nomor_rba = $("#nomor_rba").val();
          data.tanggal_rba = $("#tanggal_rba").val();
          data.nama_rba = $("#nama_rba").val();
          data.no_rekening_kegiatan_rba = $("#no_rekening_kegiatan_rba").val();
          data.berkas_rba = $("#berkas_rba").val();
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
          "className": "text-center",
          "orderable": false,
          "targets": 5
        },
      ],
    });

    $("#reload").click(function() {
      $("#nomor_rba").val("");
      $("#tanggal_rba").val("");
      $("#nama_rba").val("");
      $("#no_rekening_kegiatan_rba").val("");
      $("#berkas_rba").val("");
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