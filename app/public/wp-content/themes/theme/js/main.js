// Initiate slider
jQuery(document).ready(function () {
	let pathname = window.location.pathname;

	jQuery('.nav-item  .nav-link').click(function () {
		//removing the previous selected menu state
		jQuery('.nav').find('li.active').removeClass('active');
		//adding the state for this parent menu
		jQuery(this).parents('li').addClass('active');
	});

	jQuery('.slider').slick({
		slidesToShow: 4,
		// Enables tabbing and arrow key navigation
		accessibility: true,

		// Adapts slider height to the current slide
		adaptiveHeight: false,

		// Enable Next/Prev arrows
		arrows: true,

		// Sets the slider to be the navigation of other slider (Class or ID Name)
		asNavFor: null,

		// prev arrow
		prevArrow: '<div class="prev slider__nav></div>',

		// next arrow
		nextArrow: '<div class="next slider__nav></div>',

		// Enables auto play of slides
		autoplay: true,

		// Auto play change interval
		autoplaySpeed: 3000,

		// Enables centered view with partial prev/next slides.
		// Use with odd numbered slidesToShow counts.
		centerMode: false,

		// Side padding when in center mode. (px or %)
		centerPadding: '50px',

		// CSS3 easing
		cssEase: 'ease'
	});

	// Set menu item to active on click
	jQuery('.nav-item').on('click', function () {
		jQuery(this).addClass('active');
	});


});
