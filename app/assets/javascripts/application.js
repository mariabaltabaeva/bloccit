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
//= require rails-ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

  document.addEventListener('turbolinks:load', function(){
  var blocmetrics = {};
  blocmetrics.report = function(eventName){
  var event = {event: { name: eventName }};

  var request = new XMLHttpRequest();

  request.open("POST", "http://localhost:3000/api/events", true);

  request.setRequestHeader('Content-Type', 'application/json');

  request.send(JSON.stringify(event));
}
  var followMe = document.querySelector('.social-btn')
  followMe.addEventListener('click', function(){
    blocmetrics.report('click facebook link')
  })
});
