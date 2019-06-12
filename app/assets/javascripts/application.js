// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require popper
//= require bootstrap-sprockets
//= require tinymce
//= require tinymce-jquery
//= require countUp

window.onscroll = function() {scrollFunction()};
    
function scrollFunction() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
	document.getElementById("myBtn").style.opacity = "1";
  } else {
	document.getElementById("myBtn").style.opacity = "0";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  $('html, body').stop().animate( { scrollTop : 0 } ); 
}


