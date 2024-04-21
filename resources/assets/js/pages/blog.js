import "../common/_common";

var Blog = {
    init : function (){
        this.test();
    },
    test()
    {
        console.log('Blog oke nhe');
    },
};

$( function (){
    Blog.init()
});
