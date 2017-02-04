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
  $(".dropdown-button").dropdown({
      hover: true, // Activate on hover
      belowOrigin: true, // Displays dropdown below the button
    });

  $(".owl-carousel").owlCarousel({
    paginationSpeed : 2000,
    rtl: true,
    stopOnHover: true,
    autoPlay: 6000
  });
  $('ul.tabs').tabs();
  $('select').material_select();
  $("select[required]").css({display: "inline", height: 0, padding: 0, width: 0, position: 'absolute', opacity: '0'});
  $('#mute-button').on('click', muteVideo);
  $(".collection-item").click(playSound);
  $(".remove-shootout-btn").click(removeField);
  $("#add-shootout-mic-btn").click(addField);
  $('#new-shootout-3 *').prop('disabled',true);
  $('#new-shootout-4 *').prop('disabled',true);
  $('#new-shootout-5 *').prop('disabled',true);
  $('#landing-text').css('left', '10%');
  $('.pause').on('click', pauseAudio);
});

function playSound(e) {
  e.preventDefault();
  currentMicAudio = (this.id);
  currentMic = $(this).closest('.collection-item-row').find('.shootout-item-name').html()
  currentMicImg = $(this).closest('.collection-item-row').find('.collection-item-img-url').html()
  $(this).closest('.shootout-container').find('.audio-source').attr("src", currentMicAudio)
  $(this).closest('.shootout-container').find('.current-mic-manu').html(currentMic);
  $(this).closest('.shootout-container').find('.current-mic-img').attr("src", currentMicImg)
  $('.pause').css('color', 'transparent');  
  $(this).closest('.shootout-container').find('.pause').css('color', 'white');
  $('audio').each(function(){
    $(this)[0].pause();
  }); 
  $(this).closest('.shootout-container').find(".audio-track")[0].load();
  $(this).closest('.shootout-container').find(".audio-track")[0].play();
}

function pauseAudio(e) {
  e.preventDefault();
  $('audio').each(function(){
    $(this)[0].pause();
  });
  $(this).closest('.shootout-container').find('.pause').css('color', 'transparent');
}

function hidePause() {
  $('.pause').css('color', 'transparent');  
}

function muteVideo() {
  $('#intro-video').prop('muted', !$('#intro-video').prop('muted'));
  $('#intro-video').prop('muted')? $('#mute-icon').html('volume_off'): $('#mute-icon').html('volume_up');
}

function addField(e) {
  e.preventDefault();
  $('#form-sm1').find('.new-shootout-field:hidden:first *').prop('disabled',false);
  $('#form-sm1').find('.new-shootout-field:hidden:first').toggle()
  if ($('#form-sm1').find('.new-shootout-field:visible:last').attr('id') == 'new-shootout-5') {
    $("#add-shootout-mic-btn").toggle();
  }
}

function removeField(e) {
  e.preventDefault();
  $('#form-sm1').find('.new-shootout-field:visible:last *').prop('disabled',true);
  if ($('#form-sm1').find('.new-shootout-field:visible:last').attr('id') == 'new-shootout-5') {
    $("#add-shootout-mic-btn").toggle();
  }
  $('#form-sm1').find('.new-shootout-field:visible:last').hide()
}


