jQuery(document).ready(function () {
	var controller = new ScrollMagic.Controller();
	var jumbo_timeline = new TimelineMax();

	var fadein_jumbo_img = TweenMax.to('.jumbotron__img', 1.0, {
		opacity: 1
	});
	//Create a fadeout animation for 1.5s on the element with id = "fadein-trigger"
	var fadeout_jumbo_img = TweenMax.to('.jumbotron__img', 7.5, {
		opacity: 0,
		x: 75
	});

	var fadeout_jumbo_txt = TweenMax.to('.jumbotron__msg--text', 3.0, {
		opacity: 0,
		x: -100
	});

	var fadeout_jumbo_btn = TweenMax.to('.jumbotron__btn', 2.5, {
		opacity: 0,
		x: -60
	});


	jumbo_timeline.add(fadeout_jumbo_img).add(fadeout_jumbo_txt).add(fadeout_jumbo_btn);





	//Create a new ScrollMagic Scene
	var jumbotron_in = new ScrollMagic.Scene({
		triggerElement: '.jumbotron',
		reverse: true
	})
		.setTween(fadein_jumbo_img)
		.addTo(controller);
	//Create a second ScrollMagic Scene
	var jumbotron_out = new ScrollMagic.Scene({
		triggerElement: '.jumbotron',
		triggerHook: 'onLeave',
		reverse: true
	})
		.duration('40%')
		.setTween(jumbo_timeline)
		.addTo(controller);

});