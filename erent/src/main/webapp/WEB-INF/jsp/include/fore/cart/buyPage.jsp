<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<div class="buyPageDiv">
    <form action="forecreateOrder" method="post">

        <div class="buyFlow">
            <img class="pull-left" src="img/site/slogo.png">
            <img class="pull-right" src="img/site/buyflow.png">
            <div style="clear:both"></div>
        </div>
        <div class="address">
            <div class="addressTip">输入详细信息</div>
            <div>

                <table class="addressTable">

                    <tr>
                        <td>身份证号码 <span class="redStar">*</span></td>
                        <td><input name="mobile"  placeholder="请输入18位身份证号码" type="text"></td>
                    </tr>
                    <tr>
                        <td>取车人姓名<span class="redStar">*</span></td>
                        <td><input  name="receiver"  placeholder="请填写与身份证号码一致的姓名" type="text"></td>
                    </tr>
                    <tr>
                        <td class="firstColumn">取车时间<span class="redStar">*</span></td>

                        <td><input name="address" placeholder="请填写准确时间，以便调配车辆"></input></td>
                    </tr>
                    <tr>
                        <td>留言</td>
                        <td><input  name="post" placeholder="有话对我们说，可以写在这里" type="text"></td>
                    </tr>

                </table>

            </div>

        </div>
        <div class="productList">
            <div class="productListTip">确认订单信息</div>

            <table class="productListTable">
                <thead>
                <tr>
                    <th colspan="2" class="productListTableFirstColumn">
                        <img class="tmallbuy" src="img/site/tmallbuy.png">
                        <a class="marketLink" href="#nowhere">E租官网</a>
                        <a class="wangwanglink" href="#nowhere"> <span class="wangwangGif"></span> </a>
                    </th>
                    <th>日租价</th>
                    <th>天数</th>
                    <th>金额</th>
                    <th>取车方式</th>
                </tr>
                <tr class="rowborder">
                    <td  colspan="2" ></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </thead>
                <tbody class="productListTableTbody">
                <c:forEach items="${ois}" var="oi" varStatus="st" >
                    <tr class="orderItemTR">
                        <td class="orderItemFirstTD"><img class="orderItemImg" src="img/productSingle_middle/${oi.product.firstProductImage.id}.jpg"></td>
                        <td class="orderItemProductInfo">
                            <a  href="foreproduct?pid=${oi.product.id}" class="orderItemProductLink">
                                    ${oi.product.name}
                            </a>

                            <img src="img/site/creditcard.png" title="支持信用卡支付">
                            <img src="img/site/7day.png" title="一周七天,工作时间可取车还车">
                            <img src="img/site/promise.png" title="现场试驾,不满意可退款">

                        </td>
                        <td>

                            <span class="orderItemProductPrice">￥<fmt:formatNumber type="number" value="${oi.product.promotePrice}" minFractionDigits="2"/></span>
                        </td>
                        <td>
                            <span class="orderItemProductNumber">${oi.number}</span>
                        </td>
                        <td><span class="orderItemUnitSum">
                        ￥<fmt:formatNumber type="number" value="${oi.number*oi.product.promotePrice}" minFractionDigits="2"/>
                        </span></td>
                        <c:if test="${st.count==1}">
                            <td rowspan="5"  class="orderItemLastTD">
                                <label class="orderItemDeliveryLabel">
                                    <input type="radio" value="" checked="checked">
                                    到店取车
                                </label>

                                <select class="orderItemDeliverySelect" class="form-control">
                                    <option>自取 免送车费</option>
                                </select>

                            </td>
                        </c:if>

                    </tr>
                </c:forEach>

                </tbody>

            </table>
            <div class="orderItemSumDiv">

                <span class="pull-right">总价合计: ￥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
            </div>

        </div>

        <div class="orderItemTotalSumDiv">
            <div class="pull-right">
                <span>实付款：</span>
                <span class="orderItemTotalSumSpan">￥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
            </div>
        </div>

        <div class="submitOrderDiv">
            <button type="submit" class="submitOrderButton">提交订单</button>
        </div>
    </form>
</div>