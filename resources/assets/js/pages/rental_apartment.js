import "../common/_common";

var RentalApartment = {
    init : function (){
        this.test();
    },
    test()
    {
        console.log('RentalApartment');
    },
};

$( function (){
    RentalApartment.init()
});