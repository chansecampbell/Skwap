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
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function(){ 

  $(document).foundation();

  // $(".share-container").on('mouseout', function(){
  //   // $(this).css("background", "white");
  //   $("body").css("background", "white");


    $(function(){
      $(".element").typed({
        strings: ["discover new recipes..", "learn to speak Spanish..", "take better photographs..", "learn to code..", "get rid of this beer belly..", "write a novel..", "learn to dance..", "share my skills..", "learn for free.."],
        typeSpeed: 70,
        startDelay: 0.5,
        loop: true
      });
    });

    // });





});


