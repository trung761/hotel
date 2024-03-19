import "owl.carousel/dist/owl.carousel";
import "../common/_common";

var ApartmentDetail = {
    init : function (){
        this.runSlide();
    },
    runSlide()
    {
        $('#carousel-slide .owl-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:false,
            navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            navContainer: '#js-owl-feature-job-button',
            navClass: [ 'owl-style-buttons__btn owl-style-buttons__btn--prev', 'owl-style-buttons__btn owl-style-buttons__btn--next' ],
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
            },
            autoplay:false,
            autoplayTimeout:4000,
            autoplayHoverPause:false
        });
    }
};

$( function (){
    ApartmentDetail.init()
});