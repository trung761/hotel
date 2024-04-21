import "../common/_common";
import "select2";
var Home = {
    init : function (){
        this.runSelect2();
    },

    runSelect2($element = null)
    {
        if (!$element) $element = $(".js-select2");

        $element.select2({
            // placeholder: 'Click chọn dữ liệu'
        });
    }
};

$( function (){
    Home.init()
});
