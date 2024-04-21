var MobilePenel = {
    init : function (){
        this.toggleMobilePanel();
    },
    toggleMobilePanel()
    {
        let $body = $('body'),
            $mobilePenel = $('.mobile-panel'),
            $backdrop = $('.panel-backdrop');
        $body.on('click', '.js-mobile-panel', function(){
            $mobilePenel.addClass('mobile-panel-active');
            $body.addClass('body-mb-active');
            $backdrop.addClass('backdrop-active');
        });
        $body.on('click', '.panel-backdrop', function(){
            $mobilePenel.removeClass('mobile-panel-active');
            $body.removeClass('body-mb-active');
            $backdrop.removeClass('backdrop-active');
        });
    },
};

$( function (){
    MobilePenel.init()
});
