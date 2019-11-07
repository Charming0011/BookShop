<%--
  Created by IntelliJ IDEA.
  User: 11209
  Date: 2019/7/24
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="images/icon.ico" rel="shortcut icon">
    <title>关于我们</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/styles2.css">
</head>
<body>
<article class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>软件卓越班暑期实训项目<span>易拣网上书城研发团队</span></h1>
    </header>
    <div class="card">
        <div class="products">
            <div product-id="1" product-color="#D18B49" class="product active">
                <div class="thumbnail"></div>
                <h1 class="title">刘洋</h1>
                <p class="description">项目经理；负责整体项目管理，监督与控制并进行过程与产品质量的保证</p>
            </div>
            <div product-id="2" product-color="#542F13" class="product">
                <div class="thumbnail"></div>
                <h1 class="title">秦傲明</h1>
                <p class="description">系统分析员兼系统工程师；负责整体系统分析设计以及编码实现</p>
            </div>
            <div product-id="3" product-color="#A5AAAE" class="product">
                <div class="thumbnail"></div>
                <h1 class="title">王越豪</h1>
                <p class="description">系统分析员兼系统工程师；负责整体系统分析设计以及编码实现</p>
            </div>
            <div product-id="4" product-color="#ED8D1F" class="product">
                <div class="thumbnail"></div>
                <h1 class="title">王雷</h1>
                <p class="description">测试工程师兼用户界面设计员；负责整体用户界面设计以及项目后期测试</p>
            </div>
        </div>
        <div class="footer"><a id="prev" href="#" ripple="" ripple-color="#666666" class="btn">Prev</a><a id="next" href="#" ripple="" ripple-color="#666666" class="btn">Next</a></div>
    </div>

</article>

<script src='js/stopExecutionOnTimeout.js?t=1' type="text/javascript"></script>
<script src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        var getProductHeight = $('.product.active').height();
        $('.products').css({ height: getProductHeight });
        function calcProductHeight() {
            getProductHeight = $('.product.active').height();
            $('.products').css({ height: getProductHeight });
        }
        function animateContentColor() {
            var getProductColor = $('.product.active').attr('product-color');
            $('body').css({ background: getProductColor });
            $('.title').css({ color: getProductColor });
            $('.btn').css({ color: getProductColor });
        }
        var productItem = $('.product'), productCurrentItem = productItem.filter('.active');
        $('#next').on('click', function (e) {
            e.preventDefault();
            var nextItem = productCurrentItem.next();
            productCurrentItem.removeClass('active');
            if (nextItem.length) {
                productCurrentItem = nextItem.addClass('active');
            } else {
                productCurrentItem = productItem.first().addClass('active');
            }
            calcProductHeight();
            animateContentColor();
        });
        $('#prev').on('click', function (e) {
            e.preventDefault();
            var prevItem = productCurrentItem.prev();
            productCurrentItem.removeClass('active');
            if (prevItem.length) {
                productCurrentItem = prevItem.addClass('active');
            } else {
                productCurrentItem = productItem.last().addClass('active');
            }
            calcProductHeight();
            animateContentColor();
        });
        $('[ripple]').on('click', function (e) {
            var rippleDiv = $('<div class="ripple" />'), rippleSize = 60, rippleOffset = $(this).offset(), rippleY = e.pageY - rippleOffset.top, rippleX = e.pageX - rippleOffset.left, ripple = $('.ripple');
            rippleDiv.css({
                top: rippleY - rippleSize / 2,
                left: rippleX - rippleSize / 2,
                background: $(this).attr('ripple-color')
            }).appendTo($(this));
            window.setTimeout(function () {
                rippleDiv.remove();
            }, 1900);
        });
    });
</script>
</body>
</html>
