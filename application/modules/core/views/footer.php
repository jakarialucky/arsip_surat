</div>
<!--end::Container-->
</div>
<!--end::Entry-->
</div>
<!--end::Content-->
<!-- modal -->
<div class="modal modal fade" id="modalGue" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary  text-white">
        <h5 class="modal-title" id="modalTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="modalContent"></div>
    </div>
  </div>
</div>
<!-- end modal -->
<!--begin::Footer-->
<div class="footer bg-white py-4 d-flex flex-lg-column" id="kt_footer">
  <!--begin::Container-->
  <div class="container-fluid d-flex flex-column flex-md-row align-items-center justify-content-between">
    <!--begin::Copyright-->
    <div class="text-dark order-2 order-md-1">
      <span class="text-muted font-weight-bold mr-2">2020©</span>
      <a href="http://keenthemes.com/metronic" target="_blank" class="text-dark-75 text-hover-primary">Keenthemes</a>
    </div>
    <!--end::Copyright-->
    <!--begin::Nav-->
    <div class="nav nav-dark">
      <a href="http://keenthemes.com/metronic" target="_blank" class="nav-link pl-0 pr-5">About</a>
      <a href="http://keenthemes.com/metronic" target="_blank" class="nav-link pl-0 pr-5">Team</a>
      <a href="http://keenthemes.com/metronic" target="_blank" class="nav-link pl-0 pr-0">Contact</a>
    </div>
    <!--end::Nav-->
  </div>
  <!--end::Container-->
</div>
<!--end::Footer-->
</div>
<!--end::Wrapper-->
</div>
<!--end::Page-->
</div>
<!--end::Main-->
<!--end::Global Config-->
<script>
  var HOST_URL = "https://preview.keenthemes.com/metronic/theme/html/tools/preview";
</script>
<!--begin::Global Config(global config for global JS scripts)-->
<script>
  var KTAppSettings = {
    "breakpoints": {
      "sm": 576,
      "md": 768,
      "lg": 992,
      "xl": 1200,
      "xxl": 1400
    },
    "colors": {
      "theme": {
        "base": {
          "white": "#ffffff",
          "primary": "#3699FF",
          "secondary": "#E5EAEE",
          "success": "#1BC5BD",
          "info": "#8950FC",
          "warning": "#FFA800",
          "danger": "#F64E60",
          "light": "#E4E6EF",
          "dark": "#181C32"
        },
        "light": {
          "white": "#ffffff",
          "primary": "#E1F0FF",
          "secondary": "#EBEDF3",
          "success": "#C9F7F5",
          "info": "#EEE5FF",
          "warning": "#FFF4DE",
          "danger": "#FFE2E5",
          "light": "#F3F6F9",
          "dark": "#D6D6E0"
        },
        "inverse": {
          "white": "#ffffff",
          "primary": "#ffffff",
          "secondary": "#3F4254",
          "success": "#ffffff",
          "info": "#ffffff",
          "warning": "#ffffff",
          "danger": "#ffffff",
          "light": "#464E5F",
          "dark": "#ffffff"
        }
      },
      "gray": {
        "gray-100": "#F3F6F9",
        "gray-200": "#EBEDF3",
        "gray-300": "#E4E6EF",
        "gray-400": "#D1D3E0",
        "gray-500": "#B5B5C3",
        "gray-600": "#7E8299",
        "gray-700": "#5E6278",
        "gray-800": "#3F4254",
        "gray-900": "#181C32"
      }
    },
    "font-family": "Poppins"
  };
</script>
<script type="text/javascript">
  $(document).ready(function() {
    $('#modalGue').on('hide.bs.modal', function() {
      setTimeout(function() {
        $('.modal-dialog').removeClass('modal-lg modal-sm modal-md');
        $('#modalTitle, #modalContent , #modalFooter').html('');
      }, 500);
    });


    if ($(".select2").length) {
      $('.select2').select2();
    }


    $(document).on("click", "#reset-pwd", function(e) {
      e.preventDefault();
      $('.modal-dialog').addClass('modal-md');
      $("#modalTitle").text('Reset Password');
      $('#modalContent').load($(this).attr("href"));
      $("#modalGue").modal('show');
    });

    if ($(".text-editor").length) {
      $('.text-editor').summernote({
        height: ($(window).height() - 250),
        tabsize: 1,
        minHeight: null,
        maxHeight: null,
        dialogsInBody: true,
        dialogsFade: true,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'italic', 'underline', 'clear']],
          ['fontname', ['fontname']],
          ['height', ['height']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']],
        ],
        callbacks: {
          onImageUpload: function(image) {
            uploadImage(image[0]);
          },
          onInit: function() {
            var label = $(this).attr('data-original-label');
            var next_class = $(this).next();
            $(next_class).addClass(label);
            $(next_class).find('.btn-fullscreen').attr('data-label', label);
            $(next_class).find('button[data-original-title="Picture"]').attr('data-label', label);
            $(document).on("click", "button[data-label='" + label + "']", function(e) {
              e.preventDefault();
              var label_modal = $(this).data('label');
              $(".modal[aria-label='Insert Image']").attr('data-label', '');
              $('.button-file-manager').remove();
              var modal_filemanager = $(".modal[aria-label='Insert Image']").attr('data-label', label_modal);
              $(".modal[data-label='" + label_modal + "'] .modal-body").append('<div class="button-file-manager"></div>');
              $(".button-file-manager").html('<p id="filemanager-note"><a class="btn btn-sm btn-warning" target="_blank" href="<?= url('filemanager') ?>">Open Filemanager</a></p>');
            });

            $(document).on("click", ".btn-fullscreen[data-label='" + label + "']", function(e) {
              e.preventDefault();
              var isFullscreen = $(".text-editor[data-original-label='" + label + "']").summernote('fullscreen.isFullscreen');
              if (isFullscreen) {
                $(".fixed-top").css('z-index', '0');
                $(".sidebar").css('z-index', '0');
              } else {
                $(".fixed-top").css('z-index', '1030');
                $(".sidebar").css('z-index', '11');
              }

            });
          }
        }
      });


      // $(".modal[aria-label='Insert Image']").on('hide.bs.modal', function () {
      //   setTimeout(function(){
      //       $('.button-file-manager').remove();
      //     }, 500);
      //  });


      function uploadImage(image) {
        var data = new FormData();
        data.append("file", image);
        $.ajax({
          url: "<?= url($this->uri->segment(2) . "/imageUploadEditor") ?>",
          cache: false,
          contentType: false,
          processData: false,
          data: data,
          type: "POST",
          dataType: 'JSON',
          success: function(json) {
            if (json.success == true) {
              $('.text-editor').summernote("insertImage", json.file);
            } else {
              showToast('error', json.msg);
            }
          },
          error: function(data) {
            console.log(data);
          }
        });
      }
    }


    // upload single image
    $('.btn-remove-image').on('click', function() {
      var data_id = $(this).data('id');
      $(".btn-remove-image[data-id='" + data_id + "']").hide();
      $(".file-dir[data-id='" + data_id + "']").val("");
      $(".file-name[data-id='" + data_id + "']").val("");
      $(".file-upload-default[data-id='" + data_id + "']").val("");
    });



    $('.file-upload-browse').on('click', function() {
      var data_id = $(this).data('id');
      var file = $(".file-upload-default[data-id='" + data_id + "']");
      file.focus().trigger('click');
    });

    $('.file-upload-default').on('change', function() {
      var data_id = $(this).data('id');
      $(".file-upload-browse[data-id='" + data_id + "']").html(`<div class="spinner-border-custom spinner-border text-light" role="status"">
                                     <span class="sr-only">Loading...</span>
                                   </div>`);
      var file_data = $(".file-upload-default[data-id='" + data_id + "']").prop("files")[0];
      var form_data = new FormData();
      form_data.append("file", file_data);
      $.ajax({
        url: '<?= url("core/imageUpload") ?>',
        type: 'post',
        data: form_data,
        dataType: 'json',
        cache: false,
        contentType: false,
        processData: false,
        success: function(json) {
          $(".file-upload-browse[data-id='" + data_id + "']").html("Select File");
          if (json.success != true) {
            $(".file-dir[data-id='" + data_id + "']").val("");
            $(".file-name[data-id='" + data_id + "']").val("");
            $(".btn-remove-image[data-id='" + data_id + "']").hide();
            showToast("error", json.msg);
          } else {
            if (json.select != false) {
              $(".file-dir[data-id='" + data_id + "']").val(json.file_dir);
              $(".file-name[data-id='" + data_id + "']").val(json.file_name);
              if ($(".file-name[data-id='" + data_id + "']").val() != "") {
                $(".btn-remove-image[data-id='" + data_id + "']").show();
              }
            }
            //  console.log(json.msg);
          }
        }
      });
    });
  });
</script>
</body>
<!--end::Body-->

</html>