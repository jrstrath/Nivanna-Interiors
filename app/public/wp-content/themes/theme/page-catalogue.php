<?php get_header(); ?>


<div class="container-fluid">

	<div class="row">

		<div class="catalogue__menu col-lg-3 my-auto">
			<div class="menu__item">
				<div id="cushion" class="menu__item--row active">
					<p>Cushion</p>
				</div>
				<div id="curtain" class="menu__item--row">
					<p>Curtains</p>
				</div>
				<div id="artwork" class="menu__item--row">
					<p>Artwork</p>
				</div>
				<div id="bedsheets" class="menu__item--row">
					<p>Bedsheets</p>
				</div>
			</div>
		</div>

		<div class="products col-lg-7 offset-lg-2">

			<div class="products__card">
				<img src="<?php bloginfo('template_directory') ?>/src/img/sofa_1.jpg" class="p_card__img">
				<div class="p_card__info">
					<ul>
						<li> Brown leather</li>
						<li>3-seater</li>
					</ul>

					<span class="info__price">45,000</span>

					<div class="cart">

					</div>
				</div>
			</div>

			<!--		Testing-->
			<div class="products__card">
				<img src="<?php bloginfo('template_directory') ?>/src/img/sofa_2.jpg" class="p_card__img">
				<div class="p_card__info">
					<ul>
						<li> Grey fabric</li>
						<li>3-seater</li>
					</ul>

					<span class="info__price">45,000</span>

					<div class="cart">

					</div>
				</div>
			</div>

			<div class="products__card">
				<img src="<?php bloginfo('template_directory') ?>/src/img/sofa_3.jpg" class="p_card__img">
				<div class="p_card__info">
					<ul>
						<li> Black fabric</li>
						<li>L Joint</li>
					</ul>

					<span class="info__price">75,000</span>

					<div class="cart">

					</div>
				</div>
			</div>

			<div class="products__card">
				<img src="<?php bloginfo('template_directory') ?>/src/img/sofa_2.jpg" class="p_card__img">
				<div class="p_card__info">
					<ul>
						<li> Grey fabric</li>
						<li>3-seater</li>
					</ul>

					<span class="info__price">55,000</span>

					<div class="cart">

					</div>
				</div>
			</div>

			<div class="products__card">
				<img src="<?php bloginfo('template_directory') ?>/src/img/sofa_2.jpg" class="p_card__img">
				<div class="p_card__info">
					<ul>
						<li> Grey fabric</li>
						<li>3-seater</li>
					</ul>

					<span class="info__price">55,000</span>

					<div class="cart">

					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<?php get_footer(); ?>