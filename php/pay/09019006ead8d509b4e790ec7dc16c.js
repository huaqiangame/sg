!(function (doc, win) {
    var docEle = doc.documentElement,
        evt = "onorientationchange" in window ? "orientationchange" : "resize",
        zimpbaseUrl = 'https://iospay.laiyouxi.com/',
        apkid = 0,
        uidSelect = $('input[name="uid"]'),
        uid = uidSelect.val(),
        openId = $('input[name="openid"]').val(),
        badNetwork = "网络状况不佳,请重试!",
        appid = 'wx4464f45ffb307103',
        isWechat = false,
        ua = window.navigator.userAgent.toLowerCase(),
        fn = function () {
            var width = window.document.body.clientWidth;
            if (width > 640) {
                width = 640;
            }
            width && (docEle.style.fontSize = 20 * (width / 414) + "px");
            var container = $('#container');
            container.css('width', width + 'px');
            container.css('height', (width * 16 / 9 ) + 'px');
        }, chargeMoney = $('.charge_money');
    win.addEventListener(evt, fn, false);
    doc.addEventListener("DOMContentLoaded", fn, false);

    if (ua.match(/MicroMessenger/i) == 'micromessenger') {
        isWechat = true;
        $('#alipay').hide();
    }

    //--设置切换计费点时的样式
    chargeMoney.live("click", function () {
        var $this = $(this);
        var $radio = $(this).find("input[type=radio]");
        var checked = $radio.prop("checked");
        if (!checked && !$this.hasClass("charge_money_select")) {
            $(".charge_money").removeClass("charge_money_select");
            $(".pay-val").removeClass("pay-val-select");
            $this.addClass("charge_money_select");
            $this.children("p").eq(1).addClass("pay-val-select");
            $("input[type=radio]").removeAttr("checked");
            $radio.attr("checked", "checked");
            var paymoneyVal = $radio.val(),
                diamondNum = $this.find(".diamond-num").html();
            $('#paymoney').html(paymoneyVal);
            $('#diamond-num').html(diamondNum);
            $('#send-desc').html(paymoneyVal + '送' + (diamondNum - paymoneyVal));
        }
    });

    //--模拟点击事件，设置第一个计费点为默认选中项
    chargeMoney.eq(0).trigger("click");

    //--错误提示
    var errorDisplay = function (msg) {
        var errorDisplay = $('#error-display');
        errorDisplay.html(msg);
        errorDisplay.show();
        setTimeout("$('#error-display').hide()", 5000);
    };

    //--输入UID后，动态生成计费点
    var genPaySelect = function (rechargeConnfig) {
        var str = '', val = 0, send_val = 0;
        for (var i = 0; i < rechargeConnfig.length; i++) {
            val = parseInt(rechargeConnfig[i].val);
            send_val = parseInt(rechargeConnfig[i].send_val);
            str += '<label for="coin' + val + '">' +
                '<div class="charge_money">' +
                '<span style="height:100%;display:inline-block;vertical-align:middle"></span>' +
                '<img style="vertical-align:middle;padding-left:.3rem;" src="../../../../Pay/images/diamond.svg">' +
                '<p class="diamond-num">' + (val + send_val) + '</p>' +
                '<p class="pay-val">' +
                '<span>' + val + '元</span>' +
                '</p>' +
                '<input type="radio" class="weui-check" name="radio" value="' + val + '" id="coin' + val + '">' +
                '</div>' +
                '</label>';
        }
        $('.weui-cells_radio.pay-select').html(str);
        $('.charge_money').eq(0).trigger("click");
        payState();
    };

    //--判断当前是否可以调起支付,并设置样式
    var payState = function () {
        var alipay = $('#alipay'), wechat = $('#wechat');
        if (uid == undefined || uid == '') {
            if (!alipay.hasClass('weui-btn_disabled')) {
                alipay.addClass('weui-btn_disabled');
                wechat.addClass('weui-btn_disabled')
            }
        } else {
            if (alipay.hasClass('weui-btn_disabled')) {
                alipay.removeClass('weui-btn_disabled');
                wechat.removeClass('weui-btn_disabled');
            }
        }
    };
    payState();


    //--获取用户信息
    var getUserInfo = function () {
        var inputuid = $('input[name="uid"]').val();
        var valid = /^\d{7,}$/;
        if (!valid.test(inputuid)) {
            errorDisplay('UID格式错误，请输入正确的UID');
            return false;
        }
        loading(1);
        $.ajax({
            type: 'POST',
            url: '/Web/Pay/getUserInfo',
            data: {
                uid: inputuid
            },
            dataType: 'json',
            timeout: 10000,
            success: function (data) {
                if (data.status == 0) {
                    uid = inputuid;
                    apkid = data.data.user_info.apkid;
                    $('#nick').html(data.data.user_info.nick);
                    $('#gname').html(data.data.user_info.gname);
                    $('#code-desc').html(data.data.user_info.codeDesc);
                    var avatar = $('#avatar');
                    avatar.attr("src", data.data.user_info.avatar);
                    avatar.show();
                    genPaySelect(data.data.recharge_config);
                    loading(0);
                } else {
                    loading(0);
                    errorDisplay(data.msg);
                }
            },
            error: function (xhr, type) {
                loading(0);
                errorDisplay(badNetwork);
            }
        });
    };

    //--loading框，type:0 隐藏loading框 1:显示loading框
    var loading = function (type) {
        var toast = $('#loadingToast');
        if (type == 0) {
            toast.hide();
        } else {
            toast.show();
        }
    };

    //--显示弹框
    var dialogue = function (msg) {
        $('#dialogue-content').html(msg);
        $('#dialogue').show();
    };

    //--绑定弹框确定事件，点击确定后隐藏弹框
    $('#dialogue-ok').on('click', function () {
        $('#dialogue').hide();
    });

    //--获取下单参数的共同参数
    var getOrderParam = function () {
        var ua = navigator.userAgent.toLowerCase(), param = new Object(), val;
        val = $('input[name="radio"]:checked').val();
        if (val == undefined || val <= 0) {
            errorDisplay('请选择充值金额');
            return false;
        }
        if (uid == undefined || uid == '') {
            errorDisplay('UID不能为空');
            return false;
        }
        param.uid = uid;
        if (/iphone|ipad|ipod/.test(ua)) {
            param.paysp = 29;
            param.deviceid = 8;
        } else {
            param.paysp = 6;
            param.deviceid = 11;
        }

        param.subject = val + '元钻石';
        param.val = val;
        param.ver = 'nbf';
        param.unlockid = 0;
        param.packetid = apkid;
        param.product_id = 0;  //--微信支付需要
        param.body = param.subject;
        return param;
    };

    //--调起支付宝支付
    var alipay = function () {
        var data = getOrderParam();
        if (data === false) {
            return false;
        }
        loading(1);
        $.ajax({
            type: 'POST',
            url: zimpbaseUrl + 'WebAlipay/addorders',
            data: data,
            dataType: 'json',
            timeout: 10000,
            success: function (data) {
                loading(0);
                if (data.status == 0) {
                    window.location.href = data.data;
                } else {
                    dialogue("支付接口已关闭!");
                }
            },
            error: function (xhr, type) {
                loading(0);
                errorDisplay(badNetwork);
            }
        });
    };

    //--调起微信扫码支付
    var wechat = function () {
        var data = getOrderParam();
        if (data === false) {
            return false;
        }
        var subject = data.subject;
       loading(1);
      window.location.href = '/pay/fn_send.php?userid='+data.uid+'&amount='+data.val+'&paytype=102';
      loading(1);
      //  $.ajax({
        //    type: 'POST',
        //    url: zimpbaseUrl + 'WeChat/webAddorders',
        //    data: data,
        //    dataType: 'json',
         //   timeout: 10000,
          
           // success: function (data) {
               // loading(0);
               // if (data.status == 1) {
                    //var qrcode = new QRCode(document.getElementById("qrcode-here"), {
                    //    text: data.data,
                    //    correctLevel: QRCode.CorrectLevel.M
                    //});
                   // $('#goods-name').html(subject);
                   // $('#grayFloor').show();
                   // var modal = $('#modal');
                  //  modal.addClass("md-show");
                  
                  
              //  } else {
               //     dialogue(data.info);
               // }
            //},

     //   });
    };

    //--微信公众号支付
    var wechatJsPay = function () {
        var data = getOrderParam();
        if (data === false) {
            return false;
        }
        if (openId == undefined || openId == '') {
            dialogue("微信授权失败，请重新进入当前页面");
            return false;
        }
        data.openId = openId;
        data.appid = appid;
        loading(1);
        $.ajax({
            type: 'GET',
            url: zimpbaseUrl + 'WeChat/addorders',
            dataType: 'jsonp',
            data: data,
            success: function (data) {
                loading(0);
                if (data.status == 0) {
                    startCharge(data.data);
                } else {
                    dialogue(data.info);
                }
            },
            error: function (xhr, type) {
                loading(0);
                errorDisplay(badNetwork)
            }
        })
    };

    //--绑定微信支付按钮
    $('#wechat').on('click', function () {
        if ($(this).hasClass('weui-btn_disabled')) {
            return false;
        }
        var ua = window.navigator.userAgent.toLowerCase();
        if (isWechat == true) {
            wechatJsPay();
        } else {
            wechat();
        }
    });

    //--绑定支付宝支付按钮
    $('#alipay').on('click', function () {
        if ($(this).hasClass('weui-btn_disabled')) {
            return false;
        }
        alipay();
    });

    //--用户输入UID后，如果点确定，则去获取用户信息
    $('#submit').on('submit', function (e) {
        var inputuid = $('input[name="uid"]').val();
        if (inputuid == undefined || inputuid == '') {
            return false;
        }
        if (uid == inputuid) {
            return false;
        }
        getUserInfo();
        e.preventDefault();
    });

    uidSelect.on('blur', function () {
        var inputuid = $(this).val();
        if (inputuid == undefined || inputuid == '') {
            return false;
        }
        if (uid == inputuid) {
            return false;
        }
        getUserInfo();
    });

    //--微信公众号支付
    function startCharge(data) {
        if (typeof WeixinJSBridge == "undefined") {
            if (document.addEventListener) {
                document.addEventListener('WeixinJSBridgeReady', onBridgeReady(data), false);
            } else if (document.attachEvent) {
                document.attachEvent('WeixinJSBridgeReady', onBridgeReady(data));
                document.attachEvent('onWeixinJSBridgeReady', onBridgeReady(data));
            }
        } else {
            onBridgeReady(data);
        }
    }

    function onBridgeReady(data) {
        WeixinJSBridge.invoke(
            'getBrandWCPayRequest', {
                "appId": data['appId'],                //公众号名称，由商户传入
                "timeStamp": data['timeStamp'],        //时间戳，自1970年以来的秒数
                "nonceStr": data['nonceStr'],          //随机串
                "package": data['package'],
                "signType": data['signType'],          //微信签名方式：
                "paySign": data['paySign']             //微信签名
            },
            function (res) {
                switch (res.err_msg) {
                    case "get_brand_wcpay_request:ok":
                        dialogue("支付成功");
                        break;
                    case "get_brand_wcpay_request:fail":
                        dialogue("支付失败");
                        break;
                    case "get_brand_wcpay_request:cancel":
                        break;
                    default:
                        weuialert(res.err_msg);
                }
            }
        );
    }

    $('.question').on('click', function () {
        var tip = $('#how-to-find-uid');
        if (tip.css("display") == "block") {
            tip.hide()
        } else {
            tip.show();
        }
    });

    //--关闭二维码
    $('.md-close').on('click', function () {
        var modal = $('#modal');
        modal.removeClass("md-show");
        $('#grayFloor').hide();
        $('#qrcode-here').html('');
    });
}(document, window));