$(function(){
  var file_field = document.querySelector('input[type=file]')

  $('#profile__image').change(function(){
    $(".img__prev").remove();
    var file = $('input[type=file]').prop('files')[0];
    var fileReader = new FileReader();
    fileReader.onloadend = function() {
      var src = fileReader.result;
      var html = `<img src="${src}" class="img__prev" width="100" height="100">`
      $('#preview').before(html);
    };
    fileReader.readAsDataURL(file);
  });

});