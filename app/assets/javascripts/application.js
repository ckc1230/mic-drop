// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require owl.carousel


$(document).on('turbolinks:load', function() {
  console.log( "ready!" );
  $(".owl-carousel").owlCarousel({
    paginationSpeed : 2000,
    rtl: true,
    autoPlay:3000
  });
  $('select').material_select();
  $('#mute-button').on('click', muteVideo);
  $(".collection-item").click(playSound)
});

function playSound(e) {
  e.preventDefault();
  newSource = (this.id);
  $(this).closest('.shootout-container').find('.audio-source').attr("src", newSource)
  $('audio').each(function(){
    $(this)[0].pause();
  }); 
  $(this).closest('.shootout-container').find(".audio-track")[0].load();
  $(this).closest('.shootout-container').find(".audio-track")[0].play();
}

function muteVideo() {
  $('#intro-video').prop('muted', !$('#intro-video').prop('muted'));
  $('#intro-video').prop('muted')? $('#mute-icon').html('volume_off'): $('#mute-icon').html('volume_up');
}