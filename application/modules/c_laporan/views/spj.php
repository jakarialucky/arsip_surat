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
                <th><?= strtoupper("ID SPJ") ?>
                <th><?= strtoupper("Nomor SPJ") ?>
                <th><?= strtoupper("Tanggal Surat SPJ") ?>
                <th><?= strtoupper("No Invoice") ?>
                <th><?= strtoupper("uraian") ?>
                <th><?= strtoupper("Jumlah Uang") ?>
                  <!-- <th><?= strtoupper("File") ?> -->
                <th><?= strtoupper("Date Create") ?>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($spj as $row) { ?>
                <tr>
                  <td><?php echo $row->id_spj; ?></td>
                  <td><?php echo $row->nomor_spj; ?></td>
                  <td><?php echo $row->tanggal_surat_spj; ?></td>
                  <td><?php echo $row->no_invoice; ?></td>
                  <td><?php echo $row->uraian; ?></td>
                  <td><?php echo "Rp. " . number_format($row->jumlah_uang, 0, ',', '.'); ?></td>
                  <!-- <td><?php echo $row->file; ?></td> -->
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
        // 'print',
        {
          extend: 'print',
          orientation: 'landscape',
          customize: function(doc) {
            // atur kustomisasi dokumen PDF di sini
          },
        },
        'copyHtml5',
        'excelHtml5',
        'csvHtml5',
        // 'pdfHtml5',
        {
          extend: 'pdfHtml5',
          orientation: 'landscape',
          customize: function(doc) {
            // atur kustomisasi dokumen PDF di sini
          },
        }
      ]
    });


  });
</script>