
  $(document).ready(function() {
 //Add Hover effect to menus
    jQuery('ul.nav li.dropdown').hover(function() {
      jQuery(this).find('.dropdown-menu').parent('.dropdown').addClass('open');
    }, function() {
      jQuery(this).find('.dropdown-menu').parent('.dropdown').removeClass('open');
    });
  });