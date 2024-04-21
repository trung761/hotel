import "../common/_common";
import toastr from "toastr";
var Auth = {
    init: function () {
        this.sendCodeNumber();
    },
    sendCodeNumber() {
        $(".js-get-code-phone").click(function (event) {
            event.preventDefault();
            toastr.options = {
                closeButton: false,
                debug: false,
                newestOnTop: false,
                progressBar: true,
                positionClass: "toast-bottom-right",
                preventDuplicates: false,
                onclick: null,
                showDuration: "300",
                hideDuration: "1000",
                timeOut: "5000",
                extendedTimeOut: "1000",
                showEasing: "swing",
                hideEasing: "linear",
                showMethod: "fadeIn",
                hideMethod: "fadeOut",
            };

            let $phoneNew = $("#phone_new").val();
            if ($phoneNew.length !== 10) {
                toastr.error("Số điện thoại không hợp lệ", "Thất bại");
                return;
            }

            toastr.success(
                "Mã code đã gửi tới số điện thoại hoặc email của bạn!",
                "Thành công"
            );
            return;
        });
    },
};

$(function () {
    Auth.init();
});
