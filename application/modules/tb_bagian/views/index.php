<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <!-- <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div> -->
      <div class="card-body">
        <div class="mb-2">
                      <a href="<?=url(" tb_bagian/add")?>" class="btn btn-sm btn-success btn-icon-text"><i class="fa fa-file btn-icon-prepend"></i><?=cclang("add_new")?></a>
                    <button type="button" id="reload" class="btn btn-sm btn-info-2 btn-icon-text"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> Reload</button>
                      <a href="<?=url(" tb_bagian/filter/")?>" id="filter-show" class="btn btn-sm btn-primary btn-icon-text"><i class="mdi mdi-magnify btn-icon-prepend"></i> Filter</a>
                  </div>

        <form autocomplete="off" class="content-filter">
          <div class="row">
                          <div class="form-group col-md-6">
                                  <input type="text" id="nama_bagian" class="form-control form-control-sm" placeholder="Nama bagian" />
                              </div>

                          <div class="form-group col-md-6">
                                  <input type="text" id="username_admin_bagian" class="form-control form-control-sm" placeholder="Username admin bagian" />
                              </div>

                          <div class="form-group col-md-6">
                                  <input type="text" id="password_bagian" class="form-control form-control-sm" placeholder="Password bagian" />
                              </div>

                          <div class="form-group col-md-6">
                                  <input type="text" id="nama_lengkap" class="form-control form-control-sm" placeholder="Nama lengkap" />
                              </div>

                          <div class="form-group col-md-6">
                                  <input type="date" id="tanggal_lahir_bagian" class="form-control form-control-sm" placeholder="Tanggal lahir bagian" />
                              </div>

                          <div class="form-group col-md-6">
                                  <input type="text" id="alamat" class="form-control form-control-sm" placeholder="Alamat" />
                              </div>

                          <div class="form-group col-md-6">
                                  <input type="text" id="no_hp_bagian" class="form-control form-control-sm" placeholder="No hp bagian" />
                              </div>

                          <div class="form-group col-md-6">
                                  <input type="text" id="gambar" class="form-control form-control-sm" placeholder="Gambar" />
                              </div>

                        <div class="col-md-12">
              <button type='button' class='btn btn-default btn-sm' id="filter-cancel"><?=cclang("cancel")?></button>
              <button type="button" class="btn btn-primary btn-sm" id="filter">Filter</button>
            </div>
          </div>
        </form>

        <table class="table table-bordered table-striped dt-responsive nowrap" id="table" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
          <thead>
            <tr>
							<th>Nama bagian</th>
							<th>Username admin bagian</th>
							<th>Password bagian</th>
							<th>Nama lengkap</th>
							<th>Tanggal lahir bagian</th>
							<th>Alamat</th>
							<th>No hp bagian</th>
							<th>Gambar</th>
              <th>#</th>
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
        "url": "<?= url("
        tb_bagian / json ")?>",
        "type": "POST",
         "data": function(data) {
                                          data.nama_bagian = $("#nama_bagian").val();
                                                        data.username_admin_bagian = $("#username_admin_bagian").val();
                                                        data.password_bagian = $("#password_bagian").val();
                                                        data.nama_lengkap = $("#nama_lengkap").val();
                                                        data.tanggal_lahir_bagian = $("#tanggal_lahir_bagian").val();
                                                        data.alamat = $("#alamat").val();
                                                        data.no_hp_bagian = $("#no_hp_bagian").val();
                                                        data.gambar = $("#gambar").val();
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
          "className": "text-center",
          "orderable": false,
          "targets": 8
        },
      ],
    });

    $("#reload").click(function() {
                        $("#nama_bagian").val("");
                  $("#username_admin_bagian").val("");
                  $("#password_bagian").val("");
                  $("#nama_lengkap").val("");
                  $("#tanggal_lahir_bagian").val("");
                  $("#alamat").val("");
                  $("#no_hp_bagian").val("");
                  $("#gambar").val("");
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
      $("#modalTitle").text('<?=cclang("confirm")?>');
      $('#modalContent').html(`<p class="mb-4"><?=cclang("delete_description")?></p>
  														<button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><?=cclang("cancel")?></button>
  	                          <button type='button' class='btn btn-primary btn-sm' id='ya-hapus' data-id=` + $(this).attr('alt') + `  data-url=` + $(this).attr('href') + `><?=cclang("delete_action")?></button>
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
          swal(json.msg, {
            icon: json.type_msg
          });
          $('#table').DataTable().ajax.reload();
        }
      });
    });


  });
</script>