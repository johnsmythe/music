$(document).ready(function() {
	$(".search_submit").click(function() {
		if (!$.trim($(".search_bar").val())) {
			alert('cannot add empty link');
			$(".search_bar").val("");
			return false;
		}
	});
});
