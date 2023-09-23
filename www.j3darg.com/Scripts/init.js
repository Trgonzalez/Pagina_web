(function($){
  $(function(){

    
      $('.parallax').parallax();
      $('.scrollspy').scrollSpy();
      $('.collapsible').collapsible();
      $('.sidenav').sidenav();
      $('.fixed-action-btn').floatingActionButton();
      $('.slider').slider();
      $('.modal').modal();
      $('select').formSelect();
      $('.carousel').carousel();
        $('.carousel.carousel-slider').carousel({
    
    indicators: true
  });
      




  }); // end of document ready
})(jQuery); // end of jQuery name space
