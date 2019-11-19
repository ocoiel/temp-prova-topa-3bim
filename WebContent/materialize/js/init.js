(function($) {
	$(function() {

		$('.sidenav').sidenav();
		$('.parallax').parallax();
		$('.modal').modal();
		$('.sidenav').sidenav();
		$('.materialboxed').materialbox();
		$('select').formSelect();

		

	}); // end of documeint ready
})(jQuery); // end of jQuery name space

$('#btn-sidebar').click(function(e) {
	e.preventDefault();
	$('#wrapper').toggleClass('toggled');
	$('#btn-sidebar').toggleClass('toggled');
});

$(document).ready(function() {
	$('.tabs').tabs();
});

$(document).ready(function() {
	$('input.autocomplete').autocomplete({
		data : {
			"Netbeans" : null,
			"Microsoft" : null,
			"Google" : 'https://placehold.it/250x250',
			"Sublime" : null,
			"Workbench" : null,
			"Linux" : null,
			"VirtualStudio" : null
		},
	});
});

$(document).ready(function(){
    $('.datepicker').datepicker({ format: 'dd/mm/yyyy' });
    $('.timepicker').timepicker({twelveHour: false});
  });