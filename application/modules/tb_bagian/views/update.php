<div class="row">
  <div class="col-md-12 col-xl-10 mx-auto animated fadeIn delay-2s">
    <div class="card m-b-30">
      <div class="card-header bg-primary text-white">
        <?=ucwords($title_module)?>
      </div>
      <div class="card-body">
          <form action="<?=$action?>" id="form" autocomplete="off">
          
          <div class="form-group">
            <label>Nama bagian</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama bagian" name="nama_bagian" id="nama_bagian" value="<?=$nama_bagian?>">
          </div>
        
          <div class="form-group">
            <label>Username admin bagian</label>
            <input type="text" class="form-control form-control-sm" placeholder="Username admin bagian" name="username_admin_bagian" id="username_admin_bagian" value="<?=$username_admin_bagian?>">
          </div>
        
          <div class="form-group">
            <label>Password bagian</label>
            <input type="text" class="form-control form-control-sm" placeholder="Password bagian" name="password_bagian" id="password_bagian" value="<?=$password_bagian?>">
          </div>
        
          <div class="form-group">
            <label>Nama lengkap</label>
            <input type="text" class="form-control form-control-sm" placeholder="Nama lengkap" name="nama_lengkap" id="nama_lengkap" value="<?=$nama_lengkap?>">
          </div>
        
          <div class="form-group">
            <label>Tanggal lahir bagian</label>
            <input type="date" class="form-control form-control-sm" placeholder="Tanggal lahir bagian" name="tanggal_lahir_bagian" id="tanggal_lahir_bagian" value="<?=$tanggal_lahir_bagian?>">
          </div>
        
          <div class="form-group">
            <label>Alamat</label>
            <textarea class="form-control form-control-sm" placeholder="Alamat" name="alamat" id="alamat" rows="3" cols="80"><?=$alamat?></textarea>
          </div>
        
          <div class="form-group">
            <label>No hp bagian</label>
            <input type="text" class="form-control form-control-sm" placeholder="No hp bagian" name="no_hp_bagian" id="no_hp_bagian" value="<?=$no_hp_bagian?>">
          </div>
        
          <div class="form-group">
            <label>Gambar</label>
            <input type="text" class="form-control form-control-sm" placeholder="Gambar" name="gambar" id="gambar" value="<?=$gambar?>">
          </div>
        
          <input type="hidden" name="submit" value="update">

          <div class="text-right">
            <a href="<?=url($this->uri->segment(2))?>" class="btn btn-sm btn-danger"><?=cclang("cancel")?></a>
            <button type="submit" id="submit"  class="btn btn-sm btn-primary"><?=cclang("update")?></button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>


<script type="text/javascript">
$("#form").submit(function(e){
e.preventDefault();
var me = $(this);
$("#submit").prop('disabled',true).html('Loading...');
$(".form-group").find('.text-danger').remove();
$.ajax({
      url             : me.attr('action'),
      type            : 'post',
      data            :  new FormData(this),
      contentType     : false,
      cache           : false,
      dataType        : 'JSON',
      processData     :false,
      success:function(json){
        if (json.success==true) {
          location.href = json.redirect;
          return;
        }else {
          $("#submit").prop('disabled',false)
                      .html('<?=cclang("save")?>');
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
