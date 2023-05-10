<div class="row">
  <div class="col-md-12 col-xl-12 mx-auto animated fadeIn delay-2s">
    <div class="card card-custom gutter-b">
      <!-- <div class="card-header bg-primary text-white">
        <?= ucwords($title_module) ?>
      </div> -->
      <div class="card-header flex-wrap py-3 d-none">

      </div>
      <div class="card-body">

        <div class="container mt-4">
          <table style="width:100%" id="table" class="table table-bordered table-striped dt-responsive nowrap">
            <thead>
              <tr>
                <th>ID SPJ</th>
                <th>Nomor SPJ</th>
                <th>Tanggal Surat SPJ</th>
                <th>No Invoice</th>
                <th>Nama Pembayar</th>
                <th>Jumlah Uang</th>
                <th>File</th>
                <th>Date Create</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($spj as $row) { ?>
                <tr>
                  <td><?php echo $row->id_spj; ?></td>
                  <td><?php echo $row->nomor_spj; ?></td>
                  <td><?php echo $row->tanggal_surat_spj; ?></td>
                  <td><?php echo $row->no_invoice; ?></td>
                  <td><?php echo $row->nama_pembayar; ?></td>
                  <td><?php echo $row->jumlah_uang; ?></td>
                  <td><?php echo $row->file; ?></td>
                  <td><?php echo $row->date_create; ?></td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>


      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $(document).ready(function() {
    var table;
    table = $('#table').DataTable({
      responsive: true,
      // Pagination settings
      dom: `<'row'<'col-sm-6 text-left'f><'col-sm-6 text-right'B>>
			<'row'<'col-sm-12'tr>>
			<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7 dataTables_pager'lp>>`,

      buttons: [
        'print',
        'copyHtml5',
        'excelHtml5',
        'csvHtml5',
        'pdfHtml5',
      ]
    });


  });
</script>