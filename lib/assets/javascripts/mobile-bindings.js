$(document).bind("mobileinit", function () {
    $.mobile.ajaxEnabled = false;
    $.mobile.linkBindingEnabled = false;
    $.mobile.hashListeningEnabled = false;
    $.mobile.pushStateEnabled = false;

    // Remove page from DOM when it's being replace

    // Animation with pageslide plugin
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

    // Manual Animation
   /* var menuStatus;

    $('body').live("swipeleft", function(){
        if (menuStatus){
        $(".ui-page-active").animate({
            marginLeft: "0px",
          }, 300, function(){menuStatus = false});
          }
    });

    $('body').live("swiperight", function(){
        if (!menuStatus){
        $(".ui-page-active").animate({
            marginLeft: "165px",
          }, 300, function(){menuStatus = true});
          }
    });*/

});


