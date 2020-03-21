// Initiate slider
jQuery(document).ready(function () {
	// Set active menu on navigation
	var page = window.location.pathname;
	setActiveNav(page);


	// Jumbotron Btn navigates to catalogue page/
	jQuery('.jumbotron__btn').on('click', () => {
		window.location.pathname = '/catalogue';
	});

	// Catalogue menu activity
	jQuery('.menu__item--row').click((evt) => {
		// clear active class
		jQuery('.menu__item--row.active').removeClass('active');

		var curr_id = '#' + evt.currentTarget.id;
		jQuery(curr_id).addClass('active');
	});

	// On scroll Update navigation menu
	jQuery(document).scroll(() => {
		if (page === '/' || page.includes('jumbotron')) {
			// 1st clear default active
			jQuery('.nav-item.active').removeClass('active');

			sectionIsInView(contact) ? jQuery('#menu_contact').addClass('active') : jQuery('#menu_home').addClass('active');
		}
	});
});

/**
 * Set active Navigation
 * @param page {string}
 * */
function setActiveNav(page) {
	const contact = document.querySelector('#contact');
	// 1st clear default active
	jQuery('.nav-item.active').removeClass('active');

	if (page === '/' || page.includes('jumbotron')) {
		sectionIsInView(contact) ? jQuery('#menu_contact').addClass('active') : jQuery('#menu_home').addClass('active');
	} else if (page.includes('catalogue')) {
		jQuery('#menu_catalogue').addClass('active');
	}
}

// The checker
const sectionIsInView = el => {
	const scroll = window.scrollY || window.pageYOffset;
	const boundsTop = el.getBoundingClientRect().top + scroll;

	const viewport = {
		top: scroll,
		bottom: scroll + window.innerHeight,
	};

	const bounds = {
		top: boundsTop,
		bottom: boundsTop + el.clientHeight,
	};

	return (bounds.bottom >= viewport.top && bounds.bottom <= viewport.bottom)
		|| (bounds.top <= viewport.bottom && bounds.top >= viewport.top);
};

