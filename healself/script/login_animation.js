$(function(){
	$('#btn-cadastro').click(function(){
		$('.box-login').fadeOut(500);
		$('.box-cadastro').fadeIn(1000);
	});
	$('#btn-login').click(function(){
		$('.box-login').fadeIn(500);
		$('.box-cadastro').fadeOut(1000);
	})
})


