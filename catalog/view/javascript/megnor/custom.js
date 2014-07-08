var widthClassOptions = [];
var widthClassOptions = ({
		bestseller       : 'bestseller_default_width',		
		featured         : 'featured_default_width',
		special          : 'special_default_width',
		latest           : 'latest_default_width',
		related          : 'related_default_width',
		additional       : 'additional_default_width',
		module           : 'module_default_width'		
});

$(document).ready(function(){
	$('.product-filter .sort select').customSelect();
	$('.product-filter .limit select').customSelect();
	$('.product-info .options select').customSelect();
	$('input[type="checkbox"]').tmMark(); 
	$('input[type="radio"]').tmMark();
});

function tableMakeResponsive(){
   if ($(window).width() < 640){
		// CART  SUMMARY
		if($(".cart-info table").length != 0) {
			if($("#cart-info-table").length == 0) {
				$('<div id="cart-info-table"></div>').insertBefore('.cart-info');
			}
			$('.cart-info table').addClass("table-responsive");
			$('.cart-info table thead').addClass("table-head");
			$('.cart-info table tfoot').addClass("table-foot");
			$('.cart-info table tr').addClass("row-responsive");
			$('.cart-info table td').addClass("column-responsive clearfix");
			$(".cart-info table").responsiveTable({prefix:'tm_responsive',target:'#cart-info-table'});
		}
		
	}else{
		// CART  SUMMARY
		if($(".cart-info table").length != 0) {
			$('.cart-info table').removeClass("table-responsive");
			$('.cart-info table thead').removeClass("table-head");
			$('.cart-info table tfoot').removeClass("table-foot");
			$('.cart-info table tr').removeClass("row-responsive");
			$('.cart-info table td').removeClass("column-responsive");
			$("#cart-info-table").remove();
		}
	}
	
	
	 if ($(window).width() < 640){
		// MY WHISLIST
		if($(".wishlist-info table").length != 0) {
			if($("#wishlist-info-table").length == 0) {
				$('<div id="wishlist-info-table"></div>').insertBefore('.wishlist-info');
			}
			$('.wishlist-info table').addClass("table-responsive");
			$('.wishlist-info table thead').addClass("table-head");
			$('.wishlist-info table tfoot').addClass("table-foot");
			$('.wishlist-info table tr').addClass("row-responsive");
			$('.wishlist-info table td').addClass("column-responsive clearfix");
			$(".wishlist-info table").responsiveTable({prefix:'tm_responsive',target:'#wishlist-info-table'});
		}
		
	}else{
		// MY WHISLIST
		if($(".wishlist-info table").length != 0) {
			$('.wishlist-info table').removeClass("table-responsive");
			$('.wishlist-info table thead').removeClass("table-head");
			$('.wishlist-info table tfoot').removeClass("table-foot");
			$('.wishlist-info table tr').removeClass("row-responsive");
			$('.wishlist-info table td').removeClass("column-responsive");
			$("#wishlist-info-table").remove();
		}
	}
	
	 if ($(window).width() < 640){
		// CHECKOUT
		if($(".checkout-product table").length != 0) {
			if($("#checkout-product-table").length == 0) {
				$('<div id="checkout-product-table"></div>').insertBefore('.checkout-product');
			}
			$('.checkout-product table').addClass("table-responsive");
			$('.checkout-product table thead').addClass("table-head");
			$('.checkout-product table tbody').addClass("table-body");
			$('.checkout-product table tr').addClass("row-responsive");
			$('.checkout-product table td').addClass("column-responsive clearfix");
			$(".checkout-product table").responsiveTable({prefix:'tm_responsive',target:'#checkout-product-table'});
		}
		
	}else{
		// CHECKOUT
		if($(".checkout-product table").length != 0) {
			$('.checkout-product table').removeClass("table-responsive");
			$('.checkout-product table thead').removeClass("table-head");
			$('.checkout-product table tbody').removeClass("table-body");
			$('.checkout-product table tr').removeClass("row-responsive");
			$('.checkout-product table td').removeClass("column-responsive");
			$("#checkout-product-table").remove();
		}
	}
	
	 // ORDER INFO  DETAIL1
	if ($(window).width() < 640){
		if($("table#order-detail2").length != 0) {
			if($("#order-detail2-table").length == 0) {
				$('<div id="order-detail2-table"></div>').insertBefore('table#order-detail1');
			}
			$('table#order-detail2').addClass("table-responsive");
			$('table#order-detail2 thead').addClass("table-head");
			$('table#order-detail2 tbody').addClass("table-body");
			$('table#order-detail2 tr').addClass("row-responsive");
			$('table#order-detail2 td').addClass("column-responsive clearfix");
			$("table#order-detail2").responsiveTable({prefix:'tm_responsive',target:'#order-detail2-table'});
		}
	}else{		
		if($("table#order-detail2").length != 0) {
			$('table#order-detail2').removeClass("table-responsive");
			$('table#order-detail2 thead').removeClass("table-head");
			$('table#order-detail2 tbody').removeClass("table-body");
			$('table#order-detail2 tr').removeClass("row-responsive");
			$('table#order-detail2 td').removeClass("column-responsive");
			$("#order-detail2-table").remove();
		}
	}
	
	
	 // ORDER INFO  DETAIL2
	if ($(window).width() < 640){
		if($("table#order-detail1").length != 0) {
			if($("#order-detail1-table").length == 0) {
				$('<div id="order-detail1-table"></div>').insertAfter('table#order-detail');
			}
			$('table#order-detail1').addClass("table-responsive");
			$('table#order-detail1 thead').addClass("table-head");
			$('table#order-detail1 tbody').addClass("table-body");
			$('table#order-detail1 tr').addClass("row-responsive");
			$('table#order-detail1 td').addClass("column-responsive clearfix");
			$("table#order-detail1").responsiveTable({prefix:'tm_responsive',target:'#order-detail1-table'});
		}
	}else{		
		if($("table#order-detail1").length != 0) {
			$('table#order-detail1').removeClass("table-responsive");
			$('table#order-detail1 thead').removeClass("table-head");
			$('table#order-detail1 tbody').removeClass("table-body");
			$('table#order-detail1 tr').removeClass("row-responsive");
			$('table#order-detail1 td').removeClass("column-responsive");
			$("#order-detail1-table").remove();
		}
	}
	
	 if ($(window).width() < 640){
		//  AFFILIATE TRANSACTION
		if($("table#affiliate_transaction").length != 0) {
			if($("#affiliate_transaction-table").length == 0) {
				$('<div id="affiliate_transaction-table"></div>').insertBefore('.affiliate-transaction');
			}
			$('table#affiliate_transaction').addClass("table-responsive");
			$('table#affiliate_transaction thead').addClass("table-head");
			$('table#affiliate_transaction tfoot').addClass("table-foot");
			$('table#affiliate_transaction tr').addClass("row-responsive");
			$('table#affiliate_transaction td').addClass("column-responsive clearfix");
			$("table#affiliate_transaction").responsiveTable({prefix:'tm_responsive',target:'#affiliate_transaction-table'});
		}
		
	}else{
		// MY WHISLIST
		if($("table#affiliate_transaction").length != 0) {
			$('table#affiliate_transaction').removeClass("table-responsive");
			$('table#affiliate_transaction thead').removeClass("table-head");
			$('table#affiliate_transaction tfoot').removeClass("table-foot");
			$('table#affiliate_transaction tr').removeClass("row-responsive");
			$('table#affiliate_transaction td').removeClass("column-responsive");
			$("#affiliate_transaction-table").remove();
		}
	}
	
}
$(document).ready(function(){tableMakeResponsive();});
$(window).resize(function(){tableMakeResponsive();});

function mobileToggleMenu(){
	//alert($(window).width());
	if ($(window).width() < 980)
	{
		$("#footer .mobile_togglemenu").remove();
		$("#footer .column h3").append( "<a class='mobile_togglemenu'>&nbsp;</a>" );
		$("#footer .column h3").addClass('toggle');
		$("#footer .mobile_togglemenu").click(function(){
			$(this).parent().toggleClass('active').parent().find('ul').toggle('slow');
		});

	}else{
		$("#footer .column h3").parent().find('ul').removeAttr('style');
		$("#footer .column h3").removeClass('active');
		$("#footer .column h3").removeClass('toggle');
		$("#footer .mobile_togglemenu").remove();
	}	
}
$(document).ready(function(){mobileToggleMenu();});
$(window).resize(function(){mobileToggleMenu();});

function menuResponsive(){
	 
	if ($(window).width() < 980){
		//alert($(window).width());
		$('.nav-responsive').css('display','block');
		if($('.main-navigation').hasClass('treeview')!=true){
			$("#menu").addClass('responsive-menu');
			$("#menu").removeClass('main-menu');
			$("#menu .main-navigation").treeview({
				animated: "slow",
				collapsed: true,
				unique: true		
			});
			$('#menu .main-navigation a.active').parent().removeClass('expandable');
			$('#menu .main-navigation a.active').parent().addClass('collapsable');
			$('#menu .main-navigation .collapsable ul').css('display','block');		
		}
	
	}else{
		$("#menu .hitarea").remove();
		$("#menu").removeClass('responsive-menu');
		$("#menu").addClass('main-menu');
		$(".main-navigation").removeClass('treeview');
		$("#menu ul").removeAttr('style');
		$('#menu li').removeClass('expandable');
		$('#menu li').removeClass('collapsable');
		$('.nav-responsive').css('display','none');
	}

}
$(document).ready(function(){menuResponsive();});
$(window).resize(function(){menuResponsive();});

function productCarouselAutoSet() { 
	$("#content .product-carousel, .banners-slider-carousel .product-carousel").each(function() {
		var objectID = $(this).attr('id');
		var myObject = objectID.replace('-carousel','');
		if(myObject.indexOf("-") >= 0)
			myObject = myObject.substring(0,myObject.indexOf("-"));		
		if(widthClassOptions[myObject])
			var myDefClass = widthClassOptions[myObject];
		else
			var myDefClass= 'grid_default_width';
		var slider = $("#content #" + objectID + ",  .banners-slider-carousel #"+ objectID);
		slider.sliderCarousel({
			defWidthClss : myDefClass,
			subElement   : '.slider-item',
			subClass     : 'product-block',
			firstClass   : 'first_item_tm',
			lastClass    : 'last_item_tm',
			slideSpeed : 200,
			paginationSpeed : 800,
			autoPlay : false,
			stopOnHover : false,
			goToFirst : true,
			goToFirstSpeed : 1000,
			goToFirstNav : true,
			pagination : false,
			paginationNumbers: false,
			responsive: true,
			responsiveRefreshRate : 200,
			baseClass : "slider-carousel",
			theme : "slider-theme",
			autoHeight : true
		});
		
		var nextButton = $(this).parent().find('.next');
		var prevButton = $(this).parent().find('.prev');
		nextButton.click(function(){
			slider.trigger('slider.next');
		})
		prevButton.click(function(){
			slider.trigger('slider.prev');
		})
	});
}
//$(window).load(function(){productCarouselAutoSet();});
$(document).ready(function(){productCarouselAutoSet();});

function productListAutoSet() { 
	$("#content .productbox-grid").each(function(){
		var objectID = $(this).attr('id');
		if(objectID.length >0){
			if(widthClassOptions[objectID.replace('-grid','')])
				var myDefClass= widthClassOptions[objectID.replace('-grid','')];
		}else{
			var myDefClass= 'grid_default_width';
		}	
		$(this).smartColumnsRows({
			defWidthClss : myDefClass,
			subElement   : '.product-items',
			subClass     : 'product-block'
		});
	});		
}
$(window).load(function(){productListAutoSet();});
$(window).resize(function(){productListAutoSet();});


function HoverWatcher(selector){
	this.hovering = false;
	var self = this;

	this.isHoveringOver = function() {
		return self.hovering;
	}

	$(selector).hover(function() {
		self.hovering = true;
	}, function() {
		self.hovering = false;
	})
}

function LangCurDropDown(selector,subsel){
	var main_block = new HoverWatcher(selector);
	var sub_ul = new HoverWatcher(subsel);
	$(selector).click(function() {
		$(selector).addClass('active');
		$(subsel).slideToggle('slow');
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
				$(selector).removeClass('active');
		}, 3000);
	});
	
	$(subsel).hover(function() {
		setTimeout(function() {
			if (!main_block.isHoveringOver() && !sub_ul.isHoveringOver())
				$(subsel).stop(true, true).slideUp(450);
		}, 3000);
	});	
}

$(document).ready(function(){

	LangCurDropDown('#currency','.currency_div');
	LangCurDropDown('#language','.language_div');

	$('.nav-responsive').click(function() {
        $('.responsive-menu .main-navigation').slideToggle();
		$('.nav-responsive div').toggleClass('active');
		
    }); 

	$(".treeview-list").treeview({
		animated: "slow",
		collapsed: true,
		unique: true		
	});
	$('.treeview-list a.active').parent().removeClass('expandable');
	$('.treeview-list a.active').parent().addClass('collapsable');
	$('.treeview-list .collapsable ul').css('display','block');
});


 
 
$(document).ready(function(){
  $(".tm_headerlinks_inner").click(function(){
    $(".header_links").toggle('slow');
  });
});