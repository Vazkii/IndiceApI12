$('.file').click(function() {
	$('#src').text($(this).find('pre').text());
	$('#file-header').text($(this).attr('file'));
	sh_highlightDocument();
});