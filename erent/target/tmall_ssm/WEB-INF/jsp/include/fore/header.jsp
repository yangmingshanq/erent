<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix='fmt' %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>

<head>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/fore/style.css" rel="stylesheet">
    <link rel="icon" href="img/site/title.ico" type="images/x-ico"/>
    <script>
        function formatMoney(num){
            num = num.toString().replace(/\$|\,/g,'');
            if(isNaN(num))
                num = "0";
            sign = (num == (num = Math.abs(num)));
            num = Math.floor(num*100+0.50000000001);
            cents = num%100;
            num = Math.floor(num/100).toString();
            if(cents<10)
                cents = "0" + cents;
            for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
                num = num.substring(0,num.length-(4*i+3))+','+
                    num.substring(num.length-(4*i+3));
            return (((sign)?'':'-') + num + '.' + cents);
        }
        function checkEmpty(id, name){
            var value = $("#"+id).val();
            if(value.length==0){

                $("#"+id)[0].focus();
                return false;
            }
            return true;
        }

        $(function(){

            $("a.productDetailTopReviewLink").click(function(){
                $("div.productReviewDiv").show();
                $("div.productDetailDiv").hide();
            });
            $("a.productReviewTopPartSelectedLink").click(function(){
                $("div.productReviewDiv").hide();
                $("div.productDetailDiv").show();
            });

            $("span.leaveMessageTextareaSpan").hide();
            $("img.leaveMessageImg").click(function(){

                $(this).hide();
                $("span.leaveMessageTextareaSpan").show();
                $("div.orderItemSumDiv").css("height","100px");
            });

            $("div#footer a[href$=#nowhere1]").click(function(){
                alert("取车/还车时间为周一~周日 7:00~21:00");
            });
            $("div#footer a[href$=#nowhere2]").click(function(){
                alert("平台保证所有车辆均可正常使用，客户可现场再次验车");
            });
            $("div#footer a[href$=#nowhere3]").click(function(){
                alert("持有居民身份证及驾驶证的合法公民");
            });
            $("div#footer a[href$=#nowhere4]").click(function(){
                alert("请在预约时间内进行取/还车操作");
            });
            $("div#footer a[href$=#nowhere5]").click(function(){
                alert("本店会员仅可用于自用");
            });
            $("div#footer a[href$=#nowhere6]").click(function(){
                alert("会员可享受免服务费待遇");
            });
            $("div#footer a[href$=#nowhere7]").click(function(){
                alert("会员积分根据您的消费情况来评估");
            });
            $("div#footer a[href$=#nowhere8]").click(function(){
                alert("所有车辆保险齐全，客户仅需支付少量费用");
            });
            $("div#footer a[href$=#nowhere9]").click(function(){
                alert("理赔责任由保险公司评估");
            });
            $("div#footer a[href$=#nowhere10]").click(function(){
                alert("如遇事故可拨打我司电话13312345678");
            });
            $("div#footer a[href$=#nowhere11]").click(function(){
                alert("如需救援可拨打我司电话13312345678");
            });
            $("div#footer a[href$=#nowhere12]").click(function(){
                alert("车辆租金根据车型价格制定");
            });
            $("div#footer a[href$=#nowhere13]").click(function(){
                alert("支付宝付款，还车后租金入账");
            });
            $("div#footer a[href$=#nowhere14]").click(function(){
                alert("可充值获取储值卡");
            });
            $("div#footer a[href$=#nowhere15]").click(function(){
                alert("消费可获得积分");
            });
            $("div#footer a[href$=#nowhere16]").click(function(){
                alert("一家小型线上租车公司");
            });
            $("div#footer a[href$=#nowhere17]").click(function(){
                alert("如需帮助可拨打我司电话13312345678");
            });
            $("div#footer a[href$=#nowhere18]").click(function(){
                alert("此平台为开放平台");
            });
            $("div#footer a[href$=#nowhere19]").click(function(){
                alert("如有意愿加入我们，可拨打我司电话13312345678");
            });
            $("div#footer a[href$=#nowhere20]").click(function(){
                alert("请拨打我司电话13312345678");
            });
            $("div#footer a[href$=#nowhere21]").click(function(){
                alert("如需网站合作请拨打我司电话13312345678");
            });
            $("div#footer a[href$=#nowhere22]").click(function(){
                alert("最终解释权归本公司所有");
            });
            $("div#footer a[href$=#nowhere23]").click(function(){
                alert("本网站为知识产权保护");
            });
            $("div#footer a[href$=#nowhere24]").click(function(){
                alert("如发现有违规请拔打110举报");
            });
            $("a.wangwanglink").click(function(){
                alert("当前客服正忙，详请联系13312345678");
            });
            $("a.notImplementLink").click(function(){
                alert("此功能敬请期待");
            });

        });

    </script>
</head>

<body>