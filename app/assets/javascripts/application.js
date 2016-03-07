// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    $('#example').DataTable();
} );

function checkCheckBoxes(theForm) {
	if (
	theForm.CHECKBOX_1.checked == false &&
	theForm.CHECKBOX_2.checked == false &&
	theForm.CHECKBOX_3.checked == false) 
	{
		alert ('You didn\'t choose any of the checkboxes!');
		return false;
	} else { 	
		return true;
	}
}

$(document).ready(function() {
    $('#html5Form').formValidation();
});





  		$(function(){
  			new Highcharts.Chart({
  				chart: {
  					renderTo: "orders_chart"
  				}
  			});
  		});
