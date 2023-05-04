<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card card-custom gutter-b">
      <!-- <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div> -->
      <div class="card-header flex-wrap py-3">
           <div class="mb-2">
          <a href="<?=url("c_surat_masuk/add")?>" class="btn btn-sm btn-success btn-icon-text"><i class="fa fa-file btn-icon-prepend"></i><?=cclang("add_new")?></a>
          <button type="button" id="reload" class="btn btn-sm btn-info-2 btn-icon-text"><i class="mdi mdi-backup-restore btn-icon-prepend"></i> Reload</button>
          <a href="<?=url("c_surat_masuk/filter/")?>" id="filter-show" class="btn btn-sm btn-primary btn-icon-text"><i class="mdi mdi-magnify btn-icon-prepend"></i> Filter</a>
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
                <?=is_select_filter("tb_jenis_surat","id_jenis_surat","id_jenis_surat","jenis_surat","Jenis Surat");?>
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
                <?=is_select_filter("auth_user","id_petugas","id_user","name","Id petugas");?>
            </div>

            <div class="form-group col-md-6">
              <select class="form-control form-control-sm select2" data-placeholder=" -- Select Sifat surat -- " name="sifat_surat" id="sifat_surat">
                <option value=""></option>
                <option value="umum">Umum</option>
                <option value="rahasia">rahasia</option>
              </select>
            </div>

            <div class="form-group col-md-6">
              <select class="form-control form-control-sm select2" data-placeholder=" -- Select Status disposisi -- " name="status_disposisi" id="status_disposisi">
                <option value=""></option>
                <option value="belum disposisi">0</option>
                <option value="telah disposisi">1</option>
              </select>
            </div>

            <div class="form-group col-md-6">
              <input type="text" id="berkas_surat_masuk" class="form-control form-control-sm" placeholder="Berkas surat masuk" />
            </div>

            <div class="col-md-12">
              <button type='button' class='btn btn-default btn-sm' id="filter-cancel"><?=cclang("cancel")?></button>
              <button type="button" class="btn btn-primary btn-sm" id="filter">Filter</button>
            </div>
          </div>
        </form>               
      </div>
      <div class="card-body">
       

        

        <table class="table table-bordered table-striped dt-responsive nowrap" id="table" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
          <thead>
            <tr>
							<th>No surat</th>
							<th>Tanggal Surat</th>
							<th>Perihal</th>
							<th>Jenis Surat</th>
							<th>Pengirim</th>
							<th>Ditujukan</th>
							<th>Deskripsi</th>
							<th>Id petugas</th>
							<th>Sifat surat</th>
							<th>Status disposisi</th>
							<th>Berkas surat masuk</th>
              <th>#</th>
            </tr>
          </thead>

        </table>

      </div>
    </div>
  </div>
</div>




<script type="text/javascript">
$(document).ready(function(){
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
          "url": "<?= url("c_surat_masuk/json")?>",
          "type": "POST",
          "data":function(data){
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

  $("#reload").click(function(){
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

  $(document).on("click","#filter-show",function(e){
    e.preventDefault();
    $(".content-filter").slideDown();
  });

  $(document).on("click","#filter",function(e){
    e.preventDefault();
    $("#table").DataTable().ajax.reload();
  })

  $(document).on("click","#filter-cancel",function(e){
    e.preventDefault();
    $(".content-filter").slideUp();
  });

  $(document).on("click","#delete",function(e){
    e.preventDefault();
    $('.modal-dialog').addClass('modal-sm');
    $("#modalTitle").text('<?=cclang("confirm")?>');
    $('#modalContent').html(`<p class="mb-4"><?=cclang("delete_description")?></p>
                              <button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><?=cclang("cancel")?></button>
                              <button type='button' class='btn btn-primary btn-sm' id='ya-hapus' data-id=`+$(this).attr('alt')+`  data-url=`+$(this).attr('href')+`><?=cclang("delete_action")?></button>
                              `);
    $("#modalGue").modal('show');
  });


  $(document).on('click','#ya-hapus',function(e){
    $(this).prop('disabled',true)
            .text('Processing...');
    $.ajax({
            url:$(this).data('url'),
            type:'POST',
            cache:false,
            dataType:'json',
            success:function(json){
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