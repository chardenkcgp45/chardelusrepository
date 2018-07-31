
$(document).ready(function(){
	 $('[data-toggle="tooltip"]').tooltip(); 
});

$(function() {
	$("#datepicker").datepicker({
		dateFormat:"dd/mm/yy", 
		maxDate: new Date()
	});
});