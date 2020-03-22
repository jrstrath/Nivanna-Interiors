jQuery(document).ready(function () {
	var controller = new ScrollMagic.Controller();
	var jumbo_timeline = new TimelineMax();
	var catalogue_timeline = new TimelineMax();
	var contact_timeline = new TimelineMax();
	var social_dynamic = new TimelineMax();

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

	var fadeout_jumboslider = TweenMax.to('.bottom', 30, {
		opacity: 0,
	});

	jumbo_timeline.add(fadeout_jumbo_img)
		.add(fadeout_jumbo_txt)
		.add(fadeout_jumbo_btn)
		.add(fadeout_jumboslider);


	var fadein_catalogue_header = TweenMax.fromTo('.catalogue > .header', 1000, {
		yPercent: 200,
		opacity: 0.1,
		ease: Power1.easeInOut
	}, {yPercent: 0, opacity: 1, ease: Power1.easeInOut});

	var fadein_catalogue_menu = TweenMax.fromTo('.catalogue > .row > .catalogue__menu', 90, {
		xPercent: -100,
		opacity: 0,
		ease: Power1.easeInOut
	}, {xPercent: 0, opacity: 1, ease: Power1.easeInOut});

	var fadein_stock_header = TweenMax.fromTo('.stock__header', 90, {
		opacity: 0,
	}, {opacity: 1});

	var fadein_slider = TweenMax.fromTo('.slider__catalogue', 1000, {
		xPercent: 1,
		opacity: 0,
		ease: Bounce.easeIn
	}, {xPercent: 0, opacity: 1, ease: Power2.easeIn});

	catalogue_timeline.add(fadein_catalogue_header)
		.add(fadein_catalogue_menu)
		.add(fadein_stock_header)
		.add(fadein_slider);


	var fadein_contact_header = TweenMax.fromTo('.contact > .row > .header', 1000, {
		yPercent: 200,
		opacity: 0.1,
		ease: Power1.easeInOut
	}, {yPercent: 0, opacity: 1, ease: Power1.easeInOut});

	var contact_img = TweenMax.fromTo('.tag > img, .tag__info > .line_cyan__long', 100, {
		css: {
			scaleX: 0.2,
			scaleY: 0.2,
			opacity: 0.7
		}
	}, {css: {scaleX: 1, scaleY: 1, opacity: 1}});

	var contact_info_header = TweenMax.fromTo('.tag__info--header', 98, {
		opacity: 0,
		ease: Power1.easeInOut
	}, {opacity: 1, ease: Power1.easeInOut});

	var contact_info_text1 = TweenMax.fromTo('.tag__info > div:nth-child(2) > p:nth-child(2)', 95, {
		xPercent: 7.5,
		opacity: 0,
		ease: Power1.easeInOut
	}, {xPercent: 0, opacity: 1, ease: Power1.easeInOut});


	var contact_info_text2 = TweenMax.fromTo('.tag__info > div:nth-child(2) > p:nth-child(3)', 93.5, {
		xPercent: 7.5,
		opacity: 0,
		ease: Power1.easeInOut
	}, {xPercent: 0, opacity: 1, ease: Power1.easeInOut});

	var contact_form = TweenMax.fromTo('form', 85, {
		xPercent: -10,
		opacity: 0,
		ease: Power2.easeIn
	}, {xPercent: 0, opacity: 1, ease: Power2.easeIn});

	var map = TweenMax.fromTo('#map', 70, {
		opacity: 0,
		ease: Power2.easeIn
	}, {opacity: 1, ease: Power2.easeIn});

	contact_timeline.add(fadein_contact_header)
		.add(contact_img)
		.add(contact_info_header)
		.add(contact_info_text1)
		.add(contact_info_text2)
		.add(contact_form).add(map);


	var contact_social = TweenMax.fromTo('.social_media', 10000, {
		xPercent: 5000,
		easeIn: BounceIn
	}, {xPercent: 0, easeIn: BounceIn});

	social_dynamic.add(contact_social);

	//Create a second ScrollMagic Scene
	var jumbotron_out = new ScrollMagic.Scene({
		triggerElement: '.jumbotron',
		triggerHook: 'onLeave',
		reverse: true
	})
		.duration('100%')
		.setTween(jumbo_timeline)
		.addTo(controller);


	var catalogue = new ScrollMagic.Scene({
		triggerElement: '.catalogue',
		triggerHook: 'onEnter',
		reverse: false
	})
		.duration('100%')
		.setTween(catalogue_timeline)
		.addTo(controller);


	var contact = new ScrollMagic.Scene({
		triggerElement: '.contact',
		triggerHook: 'onEnter',
		reverse: false
	})
		.duration('100%')
		.setTween(contact_timeline)
		.addTo(controller);

	var social = new ScrollMagic.Scene({
		triggerElement: '.contact',
		triggerHook: 'onEnter',
		reverse: false
	})
		.duration('100%')
		.setTween(social_dynamic)
		.addTo(controller);

});