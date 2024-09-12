<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VNPay Payment</title>
    <style>
        /* Add your styles here */
    </style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    
    <div class="container">
        <h2>VNPay Payment</h2>
        
        <form action="${paymentUrl}" method="post" id="vnPayForm">
            <input type="hidden" name="vnp_Version" value="2.0.0">
            <input type="hidden" name="vnp_Command" value="pay">
            <input type="hidden" name="vnp_TmnCode" value="${tmnCode}">
            <input type="hidden" name="vnp_Amount" value="${totalAmount}">
            <input type="hidden" name="vnp_CurrCode" value="VND">
            <input type="hidden" name="vnp_TxnRef" value="${transactionRef}">
            <input type="hidden" name="vnp_OrderInfo" value="Order Info">
            <input type="hidden" name="vnp_ReturnUrl" value="${returnUrl}">
            <input type="hidden" name="vnp_Locale" value="vn">
            <input type="hidden" name="vnp_SecureHash" value="${secureHash}">

            <button type="submit">Pay with VNPay</button>
        </form>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
