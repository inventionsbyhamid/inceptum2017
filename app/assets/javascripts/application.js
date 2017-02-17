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
//= require jquery3
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

document.addEventListener("turbolinks:load", function() {
  $(".button-collapse").sideNav();
})

$(document).ajaxError(function (e, xhr, settings) {
        if (xhr.status == 401) {
           Materialize.toast("You need to be logged in to register for any event.", 4000);
        }
    });