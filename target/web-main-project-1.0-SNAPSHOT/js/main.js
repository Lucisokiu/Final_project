/* global navitem */

(function($) {

	"use strict";

	$(window).stellar({
    responsive: true,
    parallaxBackgrounds: true,
    parallaxElements: true,
    horizontalScrolling: false,
    hideDistantElements: false,
    scrollProperty: 'scroll'
  });

        var activeNav= function(){
            // Lấy các phần tử có class là menu
            let x = document.getElementsByClassName("nav-item");

            // Lặp qua các phần tử có class là menu
            for (let i = 0; i < x.length; i++) {

                // Lắng nghe sự kiện click
                // và đổi màu chữ thành màu đỏ
                x[i].onclick = function() {
                    this.className += " active";
                };
            }
        };
        //activeNav();
        
	var fullHeight = function() {

		$('.js-fullheight').css('height', $(window).height());
		$(window).resize(function(){
			$('.js-fullheight').css('height', $(window).height());
		});

	};
	fullHeight();

	// loader
	var loader = function() {
		setTimeout(function() { 
			if($('#ftco-loader').length > 0) {
				$('#ftco-loader').removeClass('show');
			}
		}, 1);
	};
	loader();

	// Scrollax
   $.Scrollax();

	var carousel = function() {
		$('.home-slider').owlCarousel({
	    loop:true,
	    autoplay: true,
	    margin:0,
	    animateOut: 'fadeOut',
	    animateIn: 'fadeIn',
	    nav:true,
	    dots: true,
	    autoplayHoverPause: false,
	    items: 1,
	    navText : ["<span class='ion-ios-arrow-back'></span>","<span class='ion-ios-arrow-forward'></span>"],
	    responsive:{
	      0:{
	        items:1
	      },
	      600:{
	        items:1
	      },
	      1000:{
	        items:1
	      }
	    }
		});
		$('.carousel-testimony').owlCarousel({
			center: true,
			loop: true,
			items:1,
			margin: 30,
			stagePadding: 0,
			nav: false,
			navText: ['<span class="ion-ios-arrow-back">', '<span class="ion-ios-arrow-forward">'],
			responsive:{
				0:{
					items: 1
				},
				600:{
					items: 1
				},
				1000:{
					items: 1
				}
			}
		});
	};
	carousel();

	$('nav .dropdown').hover(function(){
		var $this = $(this);
		// 	 timer;
		// clearTimeout(timer);
		$this.addClass('show');
		$this.find('> a').attr('aria-expanded', true);
		// $this.find('.dropdown-menu').addClass('animated-fast fadeInUp show');
		$this.find('.dropdown-menu').addClass('show');
	}, function(){
		var $this = $(this);
			// timer;
		// timer = setTimeout(function(){
			$this.removeClass('show');
			$this.find('> a').attr('aria-expanded', false);
			// $this.find('.dropdown-menu').removeClass('animated-fast fadeInUp show');
			$this.find('.dropdown-menu').removeClass('show');
		// }, 100);
	});


	$('#dropdown04').on('show.bs.dropdown', function () {
	  console.log('show');
	});

	// scroll
	var scrollWindow = function() {
		$(window).scroll(function(){
			var $w = $(this),
					st = $w.scrollTop(),
					navbar = $('.ftco_navbar'),
					sd = $('.js-scroll-wrap');

			if (st > 150) {
				if ( !navbar.hasClass('scrolled') ) {
					navbar.addClass('scrolled');	
				}
			} 
			if (st < 150) {
				if ( navbar.hasClass('scrolled') ) {
					navbar.removeClass('scrolled sleep');
				}
			} 
			if ( st > 350 ) {
				if ( !navbar.hasClass('awake') ) {
					navbar.addClass('awake');	
				}
				
				if(sd.length > 0) {
					sd.addClass('sleep');
				}
			}
			if ( st < 350 ) {
				if ( navbar.hasClass('awake') ) {
					navbar.removeClass('awake');
					navbar.addClass('sleep');
				}
				if(sd.length > 0) {
					sd.removeClass('sleep');
				}
			}
		});
	};
	scrollWindow();

	// header
//        var header = function() {
//            var navitem = document.getElementsByClassName("nav-item");
//		$(navitem).onclick(function(){
//			var w = $(this);
////			if (navitem.hasClass('active') ) {
////                        	navitem.removeClass('active');
////				}
//                                
//			if (!w.hasClass('active') ) {
//					$w.addClass('active');	
//				}
//		});
//	};
//        header();
        
        function addActive(){
            this.classList.add('.active');
        }
        //addActive();
	var counter = function() {
		
		$('#section-counter').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('ftco-animated') ) {

				var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(',')
				$('.number').each(function(){
					var $this = $(this),
						num = $this.data('number');
						console.log(num);
					$this.animateNumber(
					  {
					    number: num,
					    numberStep: comma_separator_number_step
					  }, 7000
					);
				});
				
			}

		} , { offset: '95%' } );

	}
	counter();

	var contentWayPoint = function() {
		var i = 0;
		$('.ftco-animate').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('ftco-animated') ) {
				
				i++;

				$(this.element).addClass('item-animate');
				setTimeout(function(){

					$('body .ftco-animate.item-animate').each(function(k){
						var el = $(this);
						setTimeout( function () {
							var effect = el.data('animate-effect');
							if ( effect === 'fadeIn') {
								el.addClass('fadeIn ftco-animated');
							} else if ( effect === 'fadeInLeft') {
								el.addClass('fadeInLeft ftco-animated');
							} else if ( effect === 'fadeInRight') {
								el.addClass('fadeInRight ftco-animated');
							} else {
								el.addClass('fadeInUp ftco-animated');
							}
							el.removeClass('item-animate');
						},  k * 50, 'easeInOutExpo' );
					});
					
				}, 100);
				
			}

		} , { offset: '95%' } );
	};
	contentWayPoint();


	// navigation
//        var ActiveNav = function() {
//		$(".nav-tabs .nav-link").on('click', function() {
//                    var $(navitem) = $('a.nav-link').parent();
//                  if(!$(navitem).hasClass('active')){
//                      navitem.addClass('active');
//                  }
//		});
//	};
	//ActiveNav();


	var OnePageNav = function() {
		$(".smoothscroll[href^='#'], #ftco-nav ul li a[href^='#']").on('click', function(e) {
		 	e.preventDefault();

		 	var hash = this.hash,
		 			navToggler = $('.navbar-toggler');
		 	$('html, body').animate({
		    scrollTop: $(hash).offset().top
		  }, 700, 'easeInOutExpo', function(){
		    window.location.hash = hash;
		  });


		  if ( navToggler.is(':visible') ) {
		  	navToggler.click();
		  }
                  if(!$(this.element).hasClass('active')){
                      this.element.addClass('active');
                  }
		});
		$('body').on('activate.bs.scrollspy', function () {
		  console.log('nice');
		})
	};
	OnePageNav();


	// magnific popup
	$('.image-popup').magnificPopup({
    type: 'image',
    closeOnContentClick: true,
    closeBtnInside: false,
    fixedContentPos: true,
    mainClass: 'mfp-no-margins mfp-with-zoom', // class to remove default margin from left and right side
     gallery: {
      enabled: true,
      navigateByImgClick: true,
      preload: [0,1] // Will preload 0 - before current, and 1 after the current image
    },
    image: {
      verticalFit: true
    },
    zoom: {
      enabled: true,
      duration: 300 // don't foget to change the duration also in CSS
    }
  });

  $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
    disableOn: 700,
    type: 'iframe',
    mainClass: 'mfp-fade',
    removalDelay: 160,
    preloader: false,

    fixedContentPos: false
  });


  $('.book_date').datepicker({
	  'format': 'm/d/yyyy',
	  'autoclose': true
	});
	$('.book_time').timepicker();


// Modal
var modal = document.getElementById("myModal");
var btn = document.getElementById("cart");
var close = document.getElementsByClassName("close")[0];
var addPdt = document.getElementsByClassName("btn-sm")[0];
var btn_goCart = document.getElementsByClassName("goCart-btn")[0];
var close_footer = document.getElementsByClassName("close-footer")[0];

btn.onclick = function () {
  modal.style.display = "block";
};
close.onclick = function () {
  modal.style.display = "none";
};
addPdt.onclick = function () {
	modal.style.display = "none";
  };
close_footer.onclick = function () {
  modal.style.display = "none";
};

window.onclick = function (event) {
  if (event.target === modal) {
    modal.style.display = "none";
  }
}

btn_goCart.onclick = function () {
	modal.style.display = "block";
  }

// update cart 
function updatecart() {
	var cart_item = document.getElementsByClassName("cart-items")[0];
	var cart_rows = cart_item.getElementsByClassName("cart-row");
	var total = 0;
	for (var i = 0; i < cart_rows.length; i++) {
	  var cart_row = cart_rows[i];
	  var price_item = cart_row.getElementsByClassName("cart-price ")[0];
	  var quantity_item = cart_row.getElementsByClassName("cart-quantity-input")[0];
	  var price = parseFloat(price_item.innerText);// chuyển một chuổi string sang number để tính tổng tiền.
	  var quantity = quantity_item.value; // lấy giá trị trong thẻ input
	  total = total + (price * quantity);
	}
	document.getElementsByClassName("cart-total-price")[0].innerText = total + '$';
  }

  // xóa cart
var remove_cart = document.getElementsByClassName("btn-danger");
for (var i = 0; i < remove_cart.length; i++) {
  var button = remove_cart[i];
  button.addEventListener("click", function () {
    var button_remove = event.target;
    button_remove.parentElement.parentElement.remove();
	updatecart();
  });
  
}

// thay đổi số lượng sản phẩm
var quantity_input = document.getElementsByClassName("cart-quantity-input");
for (var i = 0; i < quantity_input.length; i++) {
  var input = quantity_input[i];
  input.addEventListener("change", function (event) {
    var input = event.target;
    if (isNaN(input.value) || input.value <= 0) {
      input.value = 1;
    }
    updatecart();
  });
}

// Thêm vào giỏ
var add_cart = document.getElementsByClassName("btn-sm");
for (var i = 0; i < add_cart.length; i++) {
  var add = add_cart[i];
  add.addEventListener("click", function (event) {

    var button = event.target;
    var product = button.parentElement.parentElement;
    var img = product.getElementsByClassName("product-thumb")[0].src;
    var title = product.getElementsByClassName("product-title")[0].innerText;
    var price = product.getElementsByClassName("product-price")[0].innerText;
	
	var sl = 1;
    addItemToCart(title, price, img, sl);
   
    updatecart();
  });
}

var add_cart_btn = document.getElementsByClassName("round-black-btn");
for (var i = 0; i < add_cart.length; i++) {
  var add = add_cart_btn[i];
  add.addEventListener("click", function (event) {

    var button = event.target;
    var product = button.parentElement.parentElement.parentElement.parentElement;		
    var img = product.parentElement.getElementsByClassName("main_img")[0].src	;	
    var title = product.parentElement.getElementsByClassName("product-name")[0].innerText;			
    var price = product.parentElement.getElementsByClassName("product-price")[0].innerText;	
	//var total = updatecart().total
	var sl = product.parentElement.getElementsByClassName("qty")[0].value	;		
	//var sl = product.parentElement.getElementById("count_product")[0].innerText
    addItemToCart(title, price, img, sl);
    // Khi thêm sản phẩm vào giỏ hàng thì sẽ hiển thị modal
    //modal.style.display = "block";
    
    updatecart();
  });
}

function addItemToCart(title, price, img, sl) {
  var cartRow = document.createElement('div');
  cartRow.classList.add('cart-row');
  var cartItems = document.getElementsByClassName('cart-items')[0];				
  var cart_title = cartItems.getElementsByClassName('cart-item-title');
  //Nếu title của sản phẩm bằng với title mà bạn thêm vao giỏ hàng thì sẽ thông cho user.
  for (var i = 0; i < cart_title.length; i++) {
    if (cart_title[i].innerText === title) {
      alert('This product is already in the cart!');
      return;
    }
  }
  var cartRowContents = `
  <div class="cart-item cart-column">
      <img class="cart-item-image" src="${img}" width="100" height="100">
      <span class="cart-item-title">${title}</span>
  </div>
  <span class="cart-price cart-column">${price}</span>
  <div class="cart-quantity cart-column">
      <input class="cart-quantity-input" type="number" value="${sl}">       
      <button class="modal-btn btn-danger" type="button">Delete</button>
  </div>
  `;
  cartRow.innerHTML = cartRowContents;
  cartItems.append(cartRow);
  cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', function () {
    var button_remove = event.target;
    button_remove.parentElement.parentElement.remove();
    updatecart();
  });
  cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', function (event) {
    var input = event.target;
    if (isNaN(input.value) || input.value <= 0) {
      input.value = 1;
    }
    updatecart();
  });
}

})(jQuery);

