$(document).bind("mobileinit", function () {
    $.mobile.ajaxEnabled = false;
    $.mobile.linkBindingEnabled = false;
    $.mobile.hashListeningEnabled = false;
    $.mobile.pushStateEnabled = false;

    // Remove page from DOM when it's being replace

    $('body').on('swiperight', function(){
      $.pageslide( {href: '#slide'} );
    });

    $('body').on('swipeleft', function(){
      $.pageslide.close();
    });

    $('a.changepage').live('click', function(e){
      id = $(e.target).attr('href');
      console.log(id);
      $.mobile.changePage(id, {changeHash:false, transition: 'slide'});
    });
});


