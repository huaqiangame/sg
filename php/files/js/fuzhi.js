window.onload = function () {
    var copyLink = document.getElementById("room_str");
    var copyTitle = document.title;
    copyLink.value = copyTitle +window.location.href;
    $.fn.BindClipboard = $.fn.BindClipboard || function (target) {
        var options = {};
        if (target) {
            options = {
                "target": function (trigger) {
                    return $(target)[0];
                }
            };
        }
        new ClipboardJS($(this)[0], options).on("success", function (e) {

        }).on("error", function (e) {

        });
    }
      $(".copyUrl").BindClipboard("#room_str");

}

var fuzhiMain = {
    init: function () {
        $('#tips').show();
        setTimeout(function () {
            $('#tips').hide();
        }, 2000);

        var clipboard = new ClipboardJS('#copy_btn');
        clipboard.on('success', function (e) {

            e.clearSelection();
            console.log(e.clearSelection);
        });
       clipboard.on('error', function (e) {

            e.clearSelection();

        });
    },
    link: function () {
        var str = navigator.userAgent.toLowerCase();
        var ver = str.match(/cpu iphone os (.*?) like mac os/);
        if (!ver) {

            this.init();
        } else {

            if (parseInt(ver[1].replace(/_/g, ".")) < 10) {

                var copyLink = document.getElementById("main");
                var copyTitle = document.title;
                copyLink.innerHTML = copyTitle + window.location.href;
                $('#dialog').show();
            } else {

                this.init();
            }
        }

    },
    closeDialog: function () {
        $('#dialog').hide();
    },

}