import "../common/_common";

var MiniApartment = {
    init : function (){
        this.test();
    },
    test()
    {
        console.log('MiniApartment');
    },
};

$( function (){
    MiniApartment.init()
});