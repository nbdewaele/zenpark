// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require toastr
//= require rails-ujs
//= require_tree .


$(document).ready(function() {
  var pixelToMove = 50;
  $("#background-image").mousemove(function(e) {
    var width = $(this).innerWidth();
    var height = $(this).innerHeight();
    var newValueX = (e.pageX / width) * pixelToMove;
    var newValueY = (e.pageY / height) * pixelToMove;
    $(this).css('background-position', newValueX + '%' + ' ' + newValueY + '%');
  });
});