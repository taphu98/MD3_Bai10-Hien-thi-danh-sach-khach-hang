<%@ page import="java.util.List" %>
<%@ page import="rikkei.academy.hienthidanhsachkhachhang.Customer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Phạm Quang Hà", "2002","Hà Nội", "img/ha.png"));
    customerList.add(new Customer("Trần Tiến Đạt ", "2000","Hải Phòng", "img/dat.png"));
    customerList.add(new Customer("Bùi Minh Đức", "1998","Đắk Lắk", "img/duc.png"));
    customerList.add(new Customer("Đào Duy Tùng", "1992","Thái Bình", "img/tung.png"));
    customerList.add(new Customer("Nguyễn Thành Long", "1997","Lâm Đồng", "img/long.png"));
    customerList.add(new Customer("Dương Đức Chính ", "2001","Hà Nội", "img/chinh.png"));
    customerList.add(new Customer("Nguyễn Văn Bằng", "1992","Hưng Yên", "img/bang.png"));
    pageContext.setAttribute("listCustomer",customerList);
%>
<table border="1" style="width: 100%">
    <tr>
        <th>Tên</th>
        <th>Năm sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
        <c:forEach var="ct" items="#{listCustomer}">
            <tr align="center">
                <td><c:out value="${ct.name}"></c:out> </td>
                <td><c:out value="${ct.birthDay}"></c:out> </td>
                <td>
                    <c:set var="dia_chi" value="${ct.address}"></c:set>
                    <c:out value="${dia_chi}"></c:out>
                </td>
                <td>
                    <img width="200" height="200" src="${ct.image}">
                </td>
            </tr>
        </c:forEach>

</table>
</body>
</html>