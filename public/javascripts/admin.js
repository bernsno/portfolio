$(document).ready(function(){
  $('.sortable').sortable({items:'tr', axis:'y', handle: '.drag_handle', update: function(evt, ui) {
    $.post($(this).parent().attr('data-url'), '_method=put&authenticity_token='+window._auth_token+'&'+$(this).sortable('serialize'));
  }});
});