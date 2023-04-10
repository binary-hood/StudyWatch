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
//= require jquery3
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// Made some jquery to change the background, for the contact field I did the Jquery
// in the contact.html.erb in views so I gave limit of characters as e.g for phone number a person should give
// 10 numbers only or max 15 so jquery being used over there

// Use of jquery to change the background and made app more interactive
function SetFontSize(val){
  $("*").each(function(i,e){e.style.fontSize = val});
}

function SetPageStyle(val){

  if(val === 'Normal'){
    $("*").each(function(i,e){e.style.background = "white"});
    $("*").each(function(i,e){e.style.color = "black"});
  }
  else{
    $("*").each(function(i,e){e.style.background = "grey"});
    $("*").each(function(i,e){e.style.color = "white"});
  }



}
