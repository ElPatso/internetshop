<%@include file="../tiles/layouts/library.jsp"%>

<div id="page" class="b3radius">
    <img src="${contextPath}/resources/img/shopping-cart-md.png" width="100" class="leftimg">
    <c:choose>
        <c:when test="${empty cart}">
            <h2 class="rightimg">Shopping cart is empty</h2>
        </c:when>
    <c:otherwise>
        <h2 class="rightimg">Shopping cart </h2>
<table class="simple-little-table" cellspacing='0' >
    <tr>
        <th>Назва товару</th>
        <th>Ціна</th>
        <th></th>

    </tr><!-- Table Header -->
<c:forEach var="lot" items="${cart}">
    <tr>
        <td><a href="#">${lot.name}</a></td>
        <td>${lot.price}</td>
        <td>
            <a href="${pageContext.request.contextPath}/cart/delete/${lot.id}">Delete</a><br/>
        </td>
    </tr><!-- Table Row -->
</c:forEach>
</table>
    </c:otherwise>
    </c:choose>
</div>